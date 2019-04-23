@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Sesion</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Archivo</th><th>Asistencia</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $sesion->id }}</td> <td> {{ $sesion->archivo }} </td><td> {{ $sesion->asistencia }} </td>
                </tr>
            </tbody>    
        </table>
    </div>

@endsection