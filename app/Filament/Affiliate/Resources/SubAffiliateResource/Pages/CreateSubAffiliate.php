<?php

namespace App\Filament\Affiliate\Resources\SubAffiliateResource\Pages;

use App\Filament\Affiliate\Resources\SubAffiliateResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class CreateSubAffiliate extends CreateRecord
{
    protected static string $resource = SubAffiliateResource::class;

    /**
     * Posso manipular os dados antes da criação
     * @param array $data
     * @return Model
     */
    protected function handleRecordCreation(array $data): Model
    {
        $data['affiliate_id'] = auth()->user()->id;

        return static::getModel()::create($data);
    }
}
