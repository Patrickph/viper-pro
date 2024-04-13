<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAdmin
{
    public function handle(Request $request, Closure $next)
    {
        if ($request->user() && $request->user()->hasRole('admin')) {
            return $next($request);
        }

        return response()->json(['error' => 'Unauthorized'], 403);
    }
}
