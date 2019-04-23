@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Grupo</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Laborario</th><th>Id Horario</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $grupo->id }}</td> <td> {{ $grupo->laborario }} </td><td> {{ $grupo->id_horario }} </td>
                </tr>
            </tbody>    
        </table>
    </div>

@endsection