@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Horario</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Dia</th><th>Hora Inicio</th><th>Hora Final</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $horario->id }}</td> <td> {{ $horario->dia }} </td><td> {{ $horario->hora_inicio }} </td><td> {{ $horario->hora_final }} </td>
                </tr>
            </tbody>    
        </table>
    </div>

@endsection