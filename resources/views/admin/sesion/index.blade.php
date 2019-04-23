@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Sesion <a href="{{ url('admin/sesion/create') }}" class="btn btn-primary pull-right btn-sm">Add New Sesion</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Archivo</th><th>Asistencia</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($sesion as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('admin/sesion', $item->id) }}">{{ $item->archivo }}</a></td><td>{{ $item->asistencia }}</td>
                    <td>
                        <a href="{{ url('admin/sesion/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Update</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['admin/sesion', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $sesion->render() !!} </div>
    </div>

@endsection
