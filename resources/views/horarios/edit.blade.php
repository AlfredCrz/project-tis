@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            Horarios
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($horarios, ['route' => ['horarios.update', $horarios->id], 'method' => 'patch']) !!}

                        @include('horarios.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection