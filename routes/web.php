<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\IndexController;
use Illuminate\Support\Facades\Auth;

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

Route::group(['middleware' => 'isAdmin'], function()
{
    Route::get('dashboard', [HomeController::class, 'dashboard'])->name('dashboard');
});

Route::group(['middleware' => 'auth'], function()
{
    Route::get('dashboard/profile', [HomeController::class, 'profile'])->name('dashboard.profile');
    Route::get('logout', [HomeController::class, 'logout'])->name('user.logout');
    Route::get('edit-profile', [HomeController::class, 'edit_profile'])->name('profile.edit');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
