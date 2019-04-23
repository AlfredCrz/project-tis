@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Edit Sesion</h1>
    <hr/>

    {!! Form::model($sesion, [
        'method' => 'PATCH',
        'url' => ['admin/sesion', $sesion->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('archivo') ? 'has-error' : ''}}">
                {!! Form::label('archivo', 'Archivo: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('archivo', null, ['class' => 'form-control']) !!}
                    {!! $errors->first('archivo', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('asistencia') ? 'has-error' : ''}}">
                {!! Form::label('asistencia', 'Asistencia: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                                <div class="checkbox">
                <label>{!! Form::radio('asistencia', '1') !!} Yes</label>
            </div>
            <div class="checkbox">
                <label>{!! Form::radio('asistencia', '0', true) !!} No</label>
            </div>
                    {!! $errors->first('asistencia', '<p class="help-block">:message</p>') !!}
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