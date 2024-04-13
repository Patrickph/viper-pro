<x-filament-panels::page>
    <style>
        @keyframes border-color-animation {
            0% { border-color: #7f3cb9; }
            25% { border-color: #9356c8; }
            50% { border-color: #ba93dc; }
            75% { border-color: #c4a3e1; }
            100% { border-color: #7f3cb9; }
        }
    </style>
    <div class="w-full p-4 bg-gray-500 shadow-lg" style="background-color: #51515163; border-radius: 20px">
        <h2 class="mb-5 text-3xl">Atualizações</h2>
        <hr style="border-color: #4b4b4b8c;padding-bottom: 10px">

        @if($output)
            <div class="p-4">
                <code>
                    {!! $output !!}
                </code>
            </div>
        @endif

        <div class="flex justify-between w-full gap-4 mb-3">
            <button style="border-radius: 10px;" wire:click="runMigrate" class="bg-primary-600 px-3 py-2 w-full text-center">
                <div wire:loading wire:target="runMigrate">Rodando as migrações</div>
                <div wire:loading.remove wire:target="runMigrate">Rodar as Migrações</div>
            </button>
        </div>
        <br>
        <div class="flex justify-between w-full gap-4 mb-3">
            <button style="border-radius: 10px;" wire:click="runMigrateWithSeed" class="bg-primary-600 px-3 py-2 w-full text-center">
                <div wire:loading wire:target="runMigrateWithSeed">Rodando as migrações com seed</div>
                <div wire:loading.remove wire:target="runMigrateWithSeed">Rodar as Migrações com Seed</div>
            </button>
        </div>

        <br>
        <br>

        <form wire:submit="submit" class="mt-5">
            {{ $this->form }}

            <br>
            <x-filament::button type="submit" form="submit" class="w-full">
                Carregar Arquivo
            </x-filament::button>
        </form>
    </div>



</x-filament-panels::page>
