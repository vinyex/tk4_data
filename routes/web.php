<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
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

Route::get('/', [LoginController::class, 'index'])->name('login')->middleware('isLogin');
Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('isLogin');
Route::post('/login-process', [LoginController::class, 'process'])->name('login-process');
Route::any('/logout', [LoginController::class, 'logout'])->name('logout');

Route::middleware('checkAuth')->group(function () {
    Route::get('/coba', [HomeController::class, 'coba'])->name('coba');
    Route::get('/home', [HomeController::class, 'index'])->name('home');
});
