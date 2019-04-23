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
/*
Route::get('/', function () {
    return view('welcome');
});



*/



Route::get('/', [
    'as' => 'inicio.index',
    'uses' => 'SistemaUnoController@indexSistema',
]);

Route::get('/home', [
    'as' => 'inicio.home',
    'uses' => 'SistemaUnoController@indexHome',
]);

Route::get('/organigrama', [
    'as' => 'inicio.organigrama',
    'uses' => 'SistemaUnoController@indexOrganigrama',
]);


Route::get('/lugrawibe', [
    'as' => 'inicio.lugrawibe',
    'uses' => 'SistemaUnoController@indexlugrawibe',
]);

Route::get('/informaciones', [
    'as' => 'inicio.informaciones',
    'uses' => 'Cli\\informacionController@indexi',
]);

Route::get('/noticias', [
    'as' => 'inicio.noticia',
    'uses' => 'Cli\\NoticiaController@indexn',
]);





Route::resource('admin/carreras', 'Admin\\CarrerasController');
Route::resource('admin/docentes', 'Admin\\DocentesController');

Route::resource('admin/planglobal', 'Admin\\PlanGlobalController');


Route::resource('admin/area', 'Admin\\AreaController');
Route::resource('admin/subarea', 'Admin\\SubAreaController');
Route::resource('admin/departamento', 'Admin\\DepartamentoController');






Route::get('admin/area/{area}/createsubarea', ['as' => 'area.subarea.create','uses' => 'Admin\\SubAreaController@createsubarea',]);



Route::resource('admin/justificaiongeneral', 'Admin\\JustificaionGeneralController');
Route::resource('admin/propositosgenerales', 'Admin\\PropositosGeneralesController');
Route::resource('admin/objetivosgenerales', 'Admin\\ObjetivosGeneralesController');
//Route::resource('admin/unidades', 'Admin\\UnidadesController');

//Route::resource('admin/metodologiaensenanza', 'Admin\\MetodologiaEnsenanzaController');
Route::resource('admin/evaluacion', 'Admin\\EvaluacionController');



Route::resource('admin/permissions', 'Admin\\PermissionsController');
Route::resource('admin/roles', 'Admin\\RolesController');
Route::resource('admin/permissions', 'Admin\\PermissionsController');
Route::resource('admin/users', 'Admin\\UsersController');


Route::get('/wil', ['as' => 'upload', 'uses' => 'ImageController@getUpload']);
Route::post('upload', ['as' => 'upload-post', 'uses' =>'ImageController@postUpload']);
Route::post('upload/delete', ['as' => 'upload-remove', 'uses' =>'ImageController@deleteUpload']);

Route::resource('sistemaUnos', 'SistemaUnoController');

Route::get('sistemaUnos/{id}/delete', [
    'as' => 'sistemaUnos.delete',
    'uses' => 'SistemaUnoController@destroy',
]);

Route::resource('admin/sistema', 'Admin\\SistemaController');
Route::resource('admin/sistemapg', 'Admin\\SistemapgController');
Route::resource('admin/image', 'Admin\\ImageController');

Route::resource('temas', 'temaController');

Route::get('temas/{id}/delete', [
    'as' => 'temas.delete',
    'uses' => 'temaController@destroy',
]);

Route::resource('admin/unidades', 'Admin\\UnidadesController');
Route::resource('admin/grupo', 'Admin\\GrupoController');

Route::resource('admin/configuracion', 'Admin\\ConfiguracionController');
Route::resource('cli/informacion', 'Cli\\informacionController');
Route::resource('cli/noticia', 'Cli\\NoticiaController');
Route::resource('admin/horarios', 'Admin\\HorariosController');
Route::resource('admin/materias', 'Admin\\MateriasController');
Route::resource('admin/grupos', 'Admin\\GruposController');
Route::resource('admin/sesion', 'Admin\\SesionController');
Route::resource('admin/portafolio', 'Admin\\PortafolioController');