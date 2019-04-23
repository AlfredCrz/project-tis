<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;

use View;
use App\Sistemapg;
use App\Configuracion;
use App\Models\tema;
use App\Image;

use Carbon\Carbon;
use DB;
abstract class Controller extends BaseController
{
    use DispatchesJobs, ValidatesRequests;
   

    public function __construct() {

      
       $variable10=Image::where("filename","=",'fcytlogo')->first();
       if(empty($variable10)){

        $variable10=new Image;
        $variable10->original_name='fcytlogo';
        $variable10->filename= 'fcytlogo';
        $variable10->save();
        }



       $variable10=Image::where("filename","=",'fcyt')->first();
       if(empty($variable10)){



        $variable10=new Image;
        $variable10->original_name='fcyt';
        $variable10->filename= 'fcyt';
        $variable10->save();
        }


          $variable10=Image::where("filename","=",'organigramafcyt')->first();
       if(empty($variable10)){
        $variable10=new Image;
        $variable10->original_name='organigramafcyt';
        $variable10->filename= 'organigramafcyt';
        $variable10->save();
          }


        $variable10=Image::where("filename","=",'avatar1')->first();
       if(empty($variable10)){
        $variable10=new Image;
        $variable10->original_name='avatar1';
        $variable10->filename= 'avatar1';
        $variable10->save();
         }
           $variable10=Image::where("filename","=",'avatar2')->first();
       if(empty($variable10)){
        $variable10=new Image;
        $variable10->original_name='avatar2';
        $variable10->filename= 'avatar2';
        $variable10->save();
      }
        $variable10=Image::where("filename","=",'avatar3')->first();
       if(empty($variable10)){
        $variable10=new Image;
        $variable10->original_name='avatar3';
        $variable10->filename= 'avatar3';
        $variable10->save();
      }
        $variable10=Image::where("filename","=",'avatar4')->first();
       if(empty($variable10)){
        $variable10=new Image;
        $variable10->original_name='avatar4';
        $variable10->filename= 'avatar4';
        $variable10->save();
      }
        $variable10=Image::where("filename","=",'avatar5')->first();
       if(empty($variable10)){
        $variable10=new Image;
        $variable10->original_name='avatar5';
        $variable10->filename= 'avatar5';
        $variable10->save();

       }

        $variable9= Configuracion::where("estado","=",1)->first();
        //$variable9= Configuracion::all()->last();

      
       if(empty($variable9)){

          $Configuracion = new Configuracion;

          $Configuracion->nombre= 'lugrawibe';
          $Configuracion->estado= 1;
          $Configuracion->logo= 'fcytlogo';
          $Configuracion->facultad= 'fcyt';
          $Configuracion->organigrama= 'organigramafcyt';
          $Configuracion->imgenuno= 'avatar1';
          $Configuracion->imgendos= 'avatar2';
          $Configuracion->imgentres= 'avatar3';
          $Configuracion->imgencuatro= 'avatar4';
          $Configuracion->imgencinco= 'avatar5';
          

          $Configuracion->save();


          $variable9=Configuracion::findOrFail($Configuracion->id);
        }





       $variable7= Sistemapg::all()->last();

       if(!empty($variable7)){
          $variable7=$variable7->nombre_de_facultad;
        }
       if(empty($variable7)){

          $Sistema = new Sistemapg;

          $Sistema->nombre_de_facultad= 'Lugrawibe';

          $Sistema->save();


          $variable7='Lugrawibe';
        }





        $variable2= tema::all()->last();

       if(!empty($variable2)){
          $variable2=$variable2->tema;
        }
       if(empty($variable2)){

         $tema = new tema;

          $tema->tema = 'skin-black';
          $tema->menu = 'sidebar-mini';

          $tema->save();

          $variable2='skin-black';
        }

       
       $variable1= tema::all()->last();
       if(!empty($variable1)){
         $variable1=$variable1->menu;
        }
       if(empty($variable1)){

          $variable1='sidebar-mini';
        }
      
      
        $variablefecha = Carbon::now();
        $variablefecha = $variablefecha->format('d-m-Y');
       
       View::share ( 'variablefecha', $variablefecha );
       View::share ( 'variable1', $variable1 );
       View::share ( 'variable2', $variable2 );
       View::share ( 'variable7', $variable7 );
       View::share ( 'variable9', $variable9 );
       
    }  

}
