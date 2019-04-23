@extends('app')

@section('htmlheader_title')
    Home
@endsection


@section('main-content')

    <h1>Portafolio <a href="{{ url('admin/portafolio/create') }}" class="btn btn-primary pull-right btn-sm">Add New Portafolio</a></h1>
    <div class="table">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>S.No</th><th>Nombre</th><th>Actions</th>
                </tr>
            </thead>
            <tbody>
            {{-- */$x=0;/* --}}
            @foreach($portafolio as $item)
                {{-- */$x++;/* --}}
                <tr>
                    <td>{{ $x }}</td>
                    <td><a href="{{ url('admin/portafolio', $item->id) }}">{{ $item->nombre }}</a></td>
                    <td>
                        <a href="{{ url('admin/portafolio/' . $item->id . '/edit') }}">
                            <button type="submit" class="btn btn-primary btn-xs">Update</button>
                        </a> /
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['admin/portafolio', $item->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="pagination"> {!! $portafolio->render() !!} </div>
    </div>

@endsection
