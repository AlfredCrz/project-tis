@extends('app')

@section('htmlheader_title')
    Home
@endsection

@section('main-content')


    <h1>Edit Horario</h1>
    <hr/>

    {!! Form::model($horario, [
        'method' => 'PATCH',
        'url' => ['admin/horarios', $horario->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('dia') ? 'has-error' : ''}}">
                {!! Form::label('dia', 'Dia: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('dia', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('dia', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('hora_inicio') ? 'has-error' : ''}}">
                {!! Form::label('hora_inicio', 'Hora Inicio: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::input('time', 'hora_inicio', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('hora_inicio', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('hora_final') ? 'has-error' : ''}}">
                {!! Form::label('hora_final', 'Hora Final: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::input('time', 'hora_final', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('hora_final', '<p class="help-block">:message</p>') !!}
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