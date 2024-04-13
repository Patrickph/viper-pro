<?php

namespace App\Filament\Admin\Resources\DepositResource\Pages;

use App\Filament\Admin\Resources\DepositResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;

class EditDeposit extends EditRecord
{
    protected static string $resource = DepositResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    /**
     * @param Model $record
     * @param array $data
     * @return Model
     */
    protected function handleRecordUpdate(Model $record, array $data): Model
    {

        $record->update($data);
        return $record;
    }
}
