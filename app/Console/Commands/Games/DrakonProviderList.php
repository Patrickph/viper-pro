<?php

namespace App\Console\Commands\Games;

use App\Traits\Providers\DrakonTrait;
use Illuminate\Console\Command;

class DrakonProviderList extends Command
{
    use DrakonTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'drakon:providers';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        return self::getDrakonProvider();
    }
}
