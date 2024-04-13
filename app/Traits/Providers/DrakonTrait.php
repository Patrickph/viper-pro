<?php

namespace App\Traits\Providers;

use App\Helpers\Core as Helper;
use App\Models\Game;
use App\Models\GamesKey;
use App\Models\Order;
use App\Models\Provider;
use App\Models\User;
use App\Models\Wallet;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

trait DrakonTrait
{
    /**
     * @var string
     */
    public static $apiUriDrakon = 'https://gator.drakon.casino/api/v1/';

    /**
     *
     * @return false|mixed
     */
    public static function AuthenticationDrakon()
    {
        $gateway = GamesKey::first();
        if(!empty($gateway)) {
            $basicToken = base64_encode($gateway->getAttributes()['drakon_agent_token'].':'.$gateway->getAttributes()['drakon_agent_secret']);
            $response = Http::withHeaders([
                'Authorization' => 'Bearer  '.$basicToken,
            ])->post(self::$apiUriDrakon.'auth/authentication');
            if($response->successful()) {
                $json = $response->json();

                return $json['access_token'];
            }
            return false;
        }
        return false;
    }

    /**
     * Validate Hash
     * @return bool
     */
    public static function ValidateHash($hash, $params)
    {
        $generateHash = self::GenerateHash($params, env('DP_PRIVATE_KEY'));
        if($hash == $generateHash) {
            return true;
        }

        return false;
    }

    /**
     * Metodo responsavel por gerar o hash
     * @param $paramsValue
     * @param $key
     * @return string
     */
    public static function GenerateHash($paramsValue, $key) {
        return hash('sha256', $paramsValue . $key);
    }

    /**
     * @return void
     */
    public static function getDrakonProvider()
    {
        if($token = self::AuthenticationDrakon()) {
            $response = Http::withToken($token)->get(self::$apiUriDrakon.'games/provider');
            if($response->successful()) {
                $json = $response->json();
                if($json['status']) {
                    foreach($json['providers'] as $provider) {
                        $data = [
                            'code'          => $provider['code'],
                            'name'          => $provider['name'],
                            'rtp'           => 80,
                            'status'        => 1,
                            'distribution'  => 'drakon',
                        ];

                        $providerCheck = Provider::where('code', $provider['code'])->where('distribution', 'drakon')->first();
                        if(empty($providerCheck)) {
                            Provider::create($data);
                            echo "provedor salvo com sucesso \n";
                        }
                    }
                }
            }
        }
    }

    /**
     * @return void
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    public static function getDrakonGames()
    {
        if($token = self::AuthenticationDrakon()) {
            $response = Http::withToken($token)->get(self::$apiUriDrakon.'games/all');

            if($response->successful()) {
                $json = $response->json();
                if ($json['status'] == "success") {
                    foreach($json['games'] as $game) {

                        $provider = Provider::where('distribution', 'drakon')->where('name', $game['provider_game'])->first();
                        if(!empty($provider)) {
                            self::CreateGame($provider, $game);
                        }else{
                            $providerLabel = $game['provider_game'];
                            $providerTitle = $game['provider_game'];

                            $providerCreated = Provider::create([
                                'code' => $providerLabel,
                                'name' => $providerTitle,
                                'rtp' => 98,
                                'status' => 1,
                                'distribution' => 'drakon',
                            ]);

                            self::CreateGame($providerCreated, $game);
                        }
                    }
                }
            }
        }
    }

    /**
     * @param $provider
     * @param $game
     * @return void
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    private static function CreateGame($provider, $game)
    {
        $checkGame = Game::where('provider_id', $provider->id)->where('game_code', $game['game_id'])->where('distribution', 'drakon')->first();
        if(empty($checkGame)) {

            if(isset($game['banner']) && !empty($game['banner'])) {
                $image = self::uploadFromUrlDrakon($game['banner'], $game['game_name']);
            }

            $data = [
                'provider_id' => $provider->id,
                'game_id' => $game['game_id'],
                'game_code' => $game['game_id'],
                'game_name' => $game['game_name'],
                'technology' => 'html5',
                'distribution' => 'drakon',
                'rtp' => 95,
                'cover' => $image ?? null,
                'status' => 1,
            ];

            Game::create($data);
            echo "jogo salvo com sucesso \n";
        }
    }

    /**
     * @param Game $game
     * @return false|mixed
     */
    public function GameLaunchDrakon(Game $game)
    {
        if($token = self::AuthenticationDrakon()) {
            $gateway = GamesKey::first();
            if(!empty($gateway)) {
                $request = \Illuminate\Support\Facades\Http::withToken($token)
                    ->withQueryParameters([
                        'agent_code' => $gateway->getAttributes()['drakon_agent_code'],
                        'agent_token' => $gateway->getAttributes()['drakon_agent_token'],
                        'game_id' => $game->game_id,
                        'type' => 'CHARGED',
                        'currency' => 'BRL',
                        'lang' => 'pt',
                        'user_id' => auth('api')->user()->id,
                    ])->get(self::$apiUriDrakon.'games/game_launch');

                if($request->successful()) {
                    $data = $request->json();
                    if(!empty($data['game_url'])) {
                        return $data['game_url'];
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
    }


    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse|void
     */

    public function WebhookDrakon($request)
    {
        if (!empty($request->method)) {
            switch ($request->method) {
                case 'account_details':
                    return $this->AccountDetailsDrakon($request);
                case 'user_balance':
                    return $this->GetBalanceDrakon($request);
                case 'transaction':
                    return $this->SetTransactionDrakon($request);
                case 'refund':
                    return $this->SetRefundDrakon($request);
                default:
                    return response()->json(['error' => 'Método desconhecido'], 400);
            }
        }
    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    private function AccountDetailsDrakon($request)
    {
        $user = User::find($request->user_id);
        if(!empty($user)) {
            return response()->json([
                'email' => $user->email,
                'date' => $user->created_at,
            ]);
        }

        return response()->json([
            'status' => false,
            'error' => 'INVALID_USER'
        ], 400);
    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    private function GetBalanceDrakon($request)
    {
        $walletResp = Wallet::where('user_id', $request->user_id)->first();
        if($walletResp) {
            return response()->json([
                'status' => 1,
                'balance' => $walletResp->total_balance,
            ]);
        }

        return response()->json([
            'status' => 0,
            'error' => 'INVALID_USER'
        ], 400);
    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse|void
     */
    private function SetTransactionDrakon($request)
    {
        if(isset($request->user_id)) {
            $user = User::with(['wallet'])->find($request->user_id);
            $wallet = Wallet::where('user_id', $user->id)->first();

            if(!empty($user) && !empty($wallet)) {
                $bet = $request->bet;
                $win = $request->win;

                if($request->type == 'win') {
                    $checkTransaction = Order::where('type', 'bet')->where('transaction_id', $request->transaction_id_old)->first();

                    if(!empty($checkTransaction)) {
                        $transactionCreated = self::CreateDrakonTransactions($request->user_id, $request->session_id, $checkTransaction->transaction_id, 'check', $checkTransaction->type_money, $win, $request->game);

                        if(!empty($transactionCreated)) {
                            /// verificar o hash
                            $checkHash = self::GenerateHash('hash:'.$checkTransaction->session_id.'#'.$checkTransaction->transaction_id, env('DP_PRIVATE_KEY'));
                            $checkTransaction = Order::where('transaction_id', $checkTransaction->id)
                                ->where('hash', $checkHash)
                                ->first();

                            if(empty($checkTransaction)) {
                                throw new \ErrorException('Essa não cola mais otário');
                            }

                            if($win >= 0) {
                                $result_bet = 'win';
                                Helper::generateGameHistory(
                                    $wallet->user_id,
                                    $result_bet,
                                    $win,
                                    $checkTransaction->amount,
                                    $checkTransaction->type_money,
                                    $checkTransaction->transaction_id
                                );
                            }
                        }
                    }
                }else{
                    $changeBonus = Helper::DiscountBalance($wallet, $bet);
                    if($changeBonus != 'no_balance') {

                        if($request->type == 'bet') {
                            $checkTransaction = Order::where('type', 'bet')->where('transaction_id', $request->transaction_id)->first();

                            if(!empty($checkTransaction)) {
                                return response()->json([
                                    'status' => 0,
                                    'error' => 'DOUBLED_BET'
                                ], 400);
                            }else{

                                /// cria uma transação
                                $transactionCreated = self::CreateDrakonTransactions($request->user_id, $request->session_id, $request->transaction_id, 'check', $changeBonus, $bet, $request->game);

                                if(!empty($transactionCreated)) {
                                    $result_bet = 'bet';
                                    Helper::generateGameHistory(
                                        $wallet->user_id,
                                        $result_bet,
                                        0,
                                        $bet,
                                        $changeBonus,
                                        $request->transaction_id
                                    );
                                }

                                $walletResp = Wallet::where('user_id', $request->user_id)->first();
                                return response()->json([
                                    'status' => 1,
                                    'balance' => $walletResp->total_balance,
                                ]);
                            }
                        }
                    }else{
                        return response()->json([
                            'status' => 0,
                            'error' => 'NO_BALANCE'
                        ], 400);
                    }
                }
            }
            return response()->json([
                'status' => 0,
                'error' => 'INVALID_USER'
            ], 400);
        }
    }

    /**
     * Create Transactions
     * Metodo para criar uma transação
     *
     * @return false
     */
    private static function CreateDrakonTransactions($playerId, $betReferenceNum, $transactionID, $type, $changeBonus, $amount, $game)
    {
        $hashGenerate = self::GenerateHash('hash:'.$betReferenceNum.'#'.$transactionID, env('DP_PRIVATE_KEY'));

        $order = Order::create([
            'user_id'       => $playerId,
            'session_id'    => $betReferenceNum,
            'transaction_id'=> $transactionID,
            'type'          => $type,
            'type_money'    => $changeBonus,
            'amount'        => $amount,
            'providers'     => 'drakon',
            'game'          => $game,
            'game_uuid'     => $game,
            'round_id'      => 1,
            'hash'          => $hashGenerate
        ]);

        // \Log::info('Order: '. $order);

        if($order) {
            return $order;
        }

        return false;
    }

    private function SetRefundDrakon($request)
    {

        return response()->json([
            'status' => 1,
        ]);
    }


    /**
     * @param $url
     * @return string|null
     * @throws \GuzzleHttp\Exception\GuzzleException
     */
    private static function uploadFromUrlDrakon($url, $name = null)
    {
        try {
            $client = new \GuzzleHttp\Client();
            $response = $client->get($url);

            if ($response->getStatusCode() === 200) {
                $fileContent = $response->getBody();

                // Extrai o nome do arquivo e a extensão da URL
                $parsedUrl = parse_url($url);
                $pathInfo = pathinfo($parsedUrl['path']);
                //$fileName = $pathInfo['filename'] ?? 'file_' . time(); // Nome do arquivo
                $fileName  = $name ?? $pathInfo['filename'] ;
                $extension = $pathInfo['extension'] ?? 'png'; // Extensão do arquivo

                // Monta o nome do arquivo com o prefixo e a extensão
                $fileName = 'drakon/'.$fileName . '.' . $extension;

                // Salva o arquivo usando o nome extraído da URL
                Storage::disk('public')->put($fileName, $fileContent);

                return $fileName;
            }

            return null;
        } catch (\Exception $e) {
            return null;
        }
    }
}
