@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Horas
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($horas, ['route' => ['horas.update', $horas->id], 'method' => 'patch']) !!}

                        @include('horas.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection