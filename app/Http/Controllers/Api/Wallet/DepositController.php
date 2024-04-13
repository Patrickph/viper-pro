<?php

namespace App\Http\Controllers\Api\Wallet;

use App\Http\Controllers\Controller;
use App\Models\Deposit;
use App\Traits\Gateways\DigitoPayTrait;
use Illuminate\Http\Request;

class DepositController extends Controller
{
    use DigitoPayTrait;

    /**
     * @param Request $request
     * @return array|false[]
     */
    public function submitPayment(Request $request)
    {
        \Log::info($request->gateway);
        switch ($request->gateway) {
            case 'digitopay':
                return self::digitoPayRequestQrcode($request);
        }
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $deposits = Deposit::whereUserId(auth('api')->id())->paginate();
        return response()->json(['deposits' => $deposits], 200);
    }

}
