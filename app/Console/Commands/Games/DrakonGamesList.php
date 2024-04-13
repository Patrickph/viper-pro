<?php

namespace App\Console\Commands\Games;

use App\Traits\Providers\DrakonTrait;
use Illuminate\Console\Command;

class DrakonGamesList extends Command
{
    use DrakonTrait;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'drakon:games';

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
        self::getDrakonGames();
    }
}
