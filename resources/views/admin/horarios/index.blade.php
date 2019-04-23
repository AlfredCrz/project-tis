@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Horarios <a href="{{ url('admin/horarios/create') }}" class="btn btn-primary pull-right btn-sm">Add New Horario</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Dia</th><th>Hora Inicio</th><th>Hora Final</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($horarios as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('admin/horarios', $item->id) }}">{{ $item->dia }}</a></td><td>{{ $item->hora_inicio }}</td><td>{{ $item->hora_final }}</td>
                    <td>
                        <a href="{{ url('admin/horarios/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Update</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['admin/horarios', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $horarios->render() !!} </div>
    </div>

@endsection
