<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

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

// Route::get('/', function () {
//     return view('trangchu');
// });
Route::get('/', [ProductController::class, 'show'])->name('show');

Route::get('product/{id}', [ProductController::class, 'detail'])->name('detail');

//Route::view('/create-product', 'create', ['name' => 'page.create']);
Route::get('/create-product', function () {
        return view('create');
    })->name('page-create');


