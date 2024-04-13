<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Gateway extends Model
{
    use HasFactory;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'gateways';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        // digitopay
        'digitopay_uri',
        'digitopay_cliente_id',
        'digitopay_cliente_secret',

    ];

    protected $hidden = array('updated_at');

    /**
     * Get the user's first name.
     */
    protected function digitopayClienteId(): Attribute
    {
        return Attribute::make(
            get: fn (?string $value) => env('APP_DEMO') ? '*********************' : $value,
        );
    }

    /**
     * Get the user's first name.
     */
    protected function digitopayClienteSecret(): Attribute
    {
        return Attribute::make(
            get: fn (?string $value) => env('APP_DEMO') ? '*********************' : $value,
        );
    }


}
