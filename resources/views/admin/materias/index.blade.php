@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Materias <a href="{{ url('admin/materias/create') }}" class="btn btn-primary pull-right btn-sm">Add New Materia</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Nombre</th><th>Grupo</th><th>Id Docente</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($materias as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('admin/materias', $item->id) }}">{{ $item->nombre }}</a></td><td>{{ $item->grupo }}</td><td>{{ $item->id_docente }}</td>
                    <td>
                        <a href="{{ url('admin/materias/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Update</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['admin/materias', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $materias->render() !!} </div>
    </div>

@endsection
