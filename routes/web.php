<?php

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
/*
Route::get('/', function () {
    return view('home');
});
*/
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index');

// Route::get('/user', 'UserController@index');
// Route::get('/user-register', 'UserController@create');
// Route::post('/user-register', 'UserController@store');
// Route::get('/user-edit/{id}', 'UserController@edit');
// Route::get('/livetable', 'LiveTableController@index');
// Route::get('/livetable/fetch_data', 'LiveTableController@fetch_data');
// Route::post('/livetable/add_data', 'LiveTableController@add_data')->name('livetable.add_data');
// Route::post('/livetable/update_data', 'LiveTableController@update_data')->name('livetable.update_data');
// Route::post('/livetable/delete_data', 'LiveTableController@delete_data')->name('livetable.delete_data');

// Route::get('test', 'LiveTableController@fetch_data');

Route::resource('user', 'UserController');

// Route::get('/livetable', 'LiveTableController@index');
// Route::get('/livetable/fetch_data', 'LiveTableController@fetch_data');
// Route::post('/livetable/add_data', 'LiveTableController@add_data')->name('livetable.add_data');
// Route::post('/livetable/update_data', 'LiveTableController@update_data')->name('livetable.update_data');
// Route::post('/livetable/delete_data', 'LiveTableController@delete_data')->name('livetable.delete_data');

Route::get('/coba', 'ProfesioningController@test');

Route::resource('profesioning', 'ProfesioningController');
Route::get('/profesioning/fetch_data', 'ProfesioningController@fetch_data');
Route::post('/profesioning/add_data', 'ProfesioningController@add_data')->name('profesioning.add_data');
Route::post('/profesioning/update_data', 'ProfesioningController@update_data')->name('profesioning.update_data');
Route::post('/profesioning/delete_data', 'ProfesioningController@delete_data')->name('profesioning.delete_data');

// Route::get('/profesioning', 'ProfesioningController@index');


// Route::get('/laporan/buku', 'LaporanController@buku');
// Route::get('/laporan/buku/pdf', 'LaporanController@bukuPdf');



