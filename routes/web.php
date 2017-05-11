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

Route::get('/', ['uses' => 'IndexController@index', 'as' => 'homeFront']);
Route::get('/show/{id}', ['uses' => 'IndexController@getPhoto', 'as' => 'album']);

//ADMIN
Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){
	Route::get('/', function(){
		return view('admin.site.home');
	})->name('homeAdmin');

	Route::group(['prefix' => 'album'], function(){
		Route::get('/home', ['uses' => 'Admin\AlbummController@index', 'as' => 'dashboard']);
		Route::match(['get', 'post'], '/create', ['uses' => 'Admin\AlbummController@create', 'as' => 'createAl']);
		Route::get('/show/{id}', ['uses' => 'Admin\AlbummController@show', 'as' => 'showAl']);
	});	

	Route::group(['prefix' => 'photo'], function(){
		Route::get('/', ['uses' => 'Admin\ImageController@index', 'as' => 'photo']);
		Route::match(['get', 'post'], '/create', ['uses' => 'Admin\ImageController@create', 'as' => 'createPhoto']);
	});	
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
