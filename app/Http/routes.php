<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');
Route::get('templateexample', 'WelcomeController@template_example');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
Route::resource('books','BookController');

/*Route::group(['middleware' => 'App\Http\Middleware\AdminMiddleware'], function()
{
    Route::get('/books', function()
    {
	   echo "ajeet you are admin user"; die;
        // can only access this if type == A
    });

});*/

Route::get('admin', ['middleware' => 'App\Http\Middleware\AdminMiddleware', 'uses' => 'AdminController@index']);