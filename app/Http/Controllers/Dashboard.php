<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use \Laravel\Jetstream\Role;



class Dashboard extends Controller
{
    //
    public function index()
    {
        $user = Auth::user();
        $team = $user->currentTeam;
        $role = $user->teamRole($team);
        return view('dashboard', ['role' => $role]);
    }
}
