<?php

use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', 'App\Http\Controllers\Dashboard@index')->name('dashboard');

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', 'App\Http\Controllers\Dashboard@view')->name('dashboard');
// Route::get('/test', 'App\Http\Controllers\Index@index');

Route::get('/{id}', function ($id) {
    return view('index', ['id' => $id]);
}); 