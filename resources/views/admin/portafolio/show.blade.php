@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Portafolio</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>ID.</th> <th>Nombre</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $portafolio->id }}</td> <td> {{ $portafolio->nombre }} </td>
                </tr>
            </tbody>    
        </table>
    </div>

@endsection