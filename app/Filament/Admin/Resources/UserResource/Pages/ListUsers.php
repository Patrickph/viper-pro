<?php

namespace App\Filament\Admin\Resources\UserResource\Pages;

use App\Filament\Admin\Resources\UserResource;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Filament\Resources\Pages\ListRecords;


class ListUsers extends ListRecords
{
    protected static string $resource = UserResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    /**
     * @return string[]
     */
    protected function getHeaderWidgets(): array
    {
        return [
            \App\Filament\Admin\Resources\UserResource\Widgets\UserOverview::class
        ];
    }

    public function getTabs(): array
    {
        $afiliados = \DB::table('model_has_roles')
            ->where('role_id', 2)
            ->pluck('model_id')
            ->toArray();

        $admins = \DB::table('model_has_roles')
            ->where('role_id', 1)
            ->pluck('model_id')
            ->toArray();

        return [
            'all' => Tab::make('Todos Usuários')
                                ->modifyQueryUsing(function($query) {
                                    return $query;
                                }),

            'admins' => Tab::make('Todos Administradores')
                ->modifyQueryUsing(function($query) use ($admins) {
                    return $query->whereIn('id', $admins);
                }),
            'affiliates' => Tab::make('Todos Afiliados')
                ->modifyQueryUsing(function($query) use ($afiliados) {
                    return $query->whereIn('id', $afiliados);
                }),
        ];
    }
}
