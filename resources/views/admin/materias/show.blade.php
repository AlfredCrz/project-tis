@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Materia</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Nombre</th><th>Grupo</th><th>Id Docente</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $materia->id }}</td> <td> {{ $materia->nombre }} </td><td> {{ $materia->grupo }} </td><td> {{ $materia->id_docente }} </td>
                </tr>
            </tbody>    
        </table>
    </div>

@endsection