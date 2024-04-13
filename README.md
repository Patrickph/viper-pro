<p align="center"><a href="https://dragon.casino" target="_blank"><img src="https://i.ibb.co/PCXr3Sw/logo-viperpro-white.png" width="400" alt="Laravel Logo"></a></p>


## Sobre Viper Pro

Com o intuito de eliminar vendas não autorizadas, vazamentos intencionais e vírus, estamos disponibilizando gratuitamente a versão mais recente do Viper Pro. No entanto, essa iniciativa causou uma considerável revolta entre aqueles que lucravam com o projeto, levando-os a disseminar inúmeras notícias falsas na internet, alegando a presença de divisão de lucros, vírus, backdoors e outras ameaças. Em primeiro lugar, o GitHub não permite a hospedagem de arquivos maliciosos. Em segundo lugar, você pode verificar 
a inexistência de qualquer vírus no arquivo utilizando o serviço [VirusTotal](https://www.virustotal.com/gui/url/f3592aa5883c65276c95e7d14cf0f84e8f8362840726f705553e20d383c68e15).

> A decisão de tornar o Viper Pro open-source visa proteger os usuários contra possíveis golpes, evitando a compra de 
> projetos com vírus, esquemas de divisão de pagamento e outras práticas fraudulentas. Essa medida, no
> entanto, causou certo desconforto para muita gente.

##### Algumas mudanças

1. Desenvolvemos um Sistema de Validação de Hash para os callbacks da Digitopay. Esse sistema emprega uma chave privada gerada exclusivamente por você, a qual é armazenada de forma segura no arquivo .env, inacessível para qualquer pessoa não autorizada.
```
DP_PRIVATE_KEY=gerarsuachaveaqui
```
Você irá precisar rodar a migration caso não esteja fazendo uma nova instalação.
```
php artisan migrate
```

Essa chave não pode conter espaço, você pode gerar a sequência que desejar. Ele verifica um Hash sha256 com o id do usuário e o da transação, com a chave que 
sõ você tem. Evitando qualquer tipo de fraude.
```
$checkHash = self::GenerateHash('hash:'.$transaction->user_id.'#'.$idTransaction, config('PUBLIC_KEY'));
$checkTransaction = Transaction::where('payment_id', $idTransaction)
    ->where('hash', $checkHash)
    ->where('status', 0)
    ->first();

if(empty($checkTransaction)) {
    throw new \ErrorException('');
}
```


2. Para prevenir qualquer manipulação nos saques, implementei uma nova middleware para verificar se o usuário que está realizando o 
saque possui a função de administrador. Acredito que isso já soluciona um dos problemas identificados.
```
Route::middleware(['admin.filament', 'admin'])
    ->group(function ()
    {
        Route::get('withdrawal/{id}/{action}', [DigitoPayController::class, 'withdrawalFromModal'])->name('digitopay.withdrawal');
        Route::get('cancelwithdrawal/{id}/{action}', [DigitoPayController::class, 'cancelWithdrawalFromModal'])->name('digitopay.cancelwithdrawal');
    });
```


### Provedores
Para evitar possíveis golpes devido a falhas na verificação de ganhos por parte de outros provedores de jogos, optamos por removê-los 
temporariamente. Alguns aproveitadores estão explorando essas falhas para fraudar a plataforma. Decidimos manter apenas a Venix API, a 
qual recebemos suporte e continuamos aprimorando. No entanto, isso não impede que você adicione outras plataformas conforme desejar. 
Você tem liberdade para adaptar o sistema da maneira que preferir.

### Dados de acesso ao admin
admin@demo.com

123
#### Não esqueça de trocar a senha para evitar pessoas acessando seu painel

## Contato do Gerente da DigitoPay
Atráves do numero abaixo você consegue falar diretamente com o gerente da Digitopay e abrir sua conta facilmente.
### 48 8814-2566

## Receber notificação da Digitopay

Para receber o endpoint da Digitopay, método responsável pela confirmação de pagamento, utilize dentro da plataforma do Digitopay o endpoint https://meusite.com/digitopay/callback. Não esqueça de substituir "meusite.com" pelo seu próprio domínio.

## Contato da Drakon Gator
Atráves do link abaixo você consegue falar diretamente com a equipe drakon e abrir sua conta facilmente para usar o agregador de jogos.
### [Telegram](https://t.me/Drakongator)


## Vulnerabilidades de segurança

Se você descobrir uma vulnerabilidade de segurança no Projeto, envie um mensagem no [Telegram](https://t.me/Drakongator). Todas as vulnerabilidades de segurança serão prontamente resolvidas.
Nosso projeto não é perfeito, mas com sua contribuição podemos ter algo muito bom e seguro.

## License

The Viper Pro is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
