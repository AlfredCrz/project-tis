@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Edit Grupo</h1>
    <hr/>

    {!! Form::model($grupo, [
        'method' => 'PATCH',
        'url' => ['admin/grupos', $grupo->id],
        'class' => 'form-horizontal'
    ]) !!}

                <div class="form-group {{ $errors->has('laborario') ? 'has-error' : ''}}">
                {!! Form::label('laborario', 'Laborario: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::text('laborario', null, ['class' => 'form-control', 'required' => 'required']) !!}
                    {!! $errors->first('laborario', '<p class="help-block">:message</p>') !!}
                </div>
            </div>
            <div class="form-group {{ $errors->has('id_horario') ? 'has-error' : ''}}">
                {!! Form::label('id_horario', 'Id Horario: ', ['class' => 'col-sm-3 control-label']) !!}
                <div class="col-sm-6">
                    {!! Form::select('id_horario', $horarios, null, ['class' => 'form-control']) !!}
                    {!! $errors->first('id_horario', '<p class="help-block">:message</p>') !!}
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