<?php

namespace App\Filament\Admin\Resources\CategoryResource\Pages;

use App\Filament\Admin\Resources\CategoryResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class EditCategory extends EditRecord
{
    protected static string $resource = CategoryResource::class;

    /**
     * @return array|Actions\Action[]|Actions\ActionGroup[]
     */
    protected function getHeaderActions(): array
    {
        return env('APP_DEMO') ? [] : [
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
        $data['slug'] = Str::slug($data['name']);
        $record->update($data);

        return $record;
    }

}
