@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Edit Materia</h1>
    <hr/>

    {!! Form::model($materia, [
        'method' => 'PATCH',
        'url' => ['admin/materias', $materia->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('nombre') ? 'has-error' : ''}}">
                {!! Form::label('nombre', 'Nombre: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('nombre', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('nombre', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('grupo') ? 'has-error' : ''}}">
                {!! Form::label('grupo', 'Grupo: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('grupo', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('grupo', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('id_docente') ? 'has-error' : ''}}">
                {!! Form::label('id_docente', 'Id Docente: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::select('id_docente', $docentes, null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('id_docente', '<p class="help-block">:message</p>') !!}
                </div>
            </div>


    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-3">
            {!! Form::submit('Update', ['class' => 'btn btn-primary form-control']) !!}
        </div>
    </div>
    {!! Form::close() !!}

    @if ($errors->any())
        <ul class="alert alert-danger">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif

@endsection