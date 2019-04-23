@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')
    <h1>Grupos <a href="{{ url('admin/grupos/create') }}" class="btn btn-primary pull-right btn-sm">Add New Grupo</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Laborario</th><th>Id Horario</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($grupos as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('admin/grupos', $item->id) }}">{{ $item->laborario }}</a></td><td>{{ $item->id_horario }}</td>
                    <td>
                        <a href="{{ url('admin/grupos/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Update</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['admin/grupos', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $grupos->render() !!} </div>
    </div>

@endsection
