<table class="table table-responsive" id="usuarios-table">
    <thead>
        <th>Tipo Usuario</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Codigo Sis</th>
        <th>Direccion</th>
        <th>Cedula</th>
        <th>Telefono</th>
        <th>Email</th>
        <th>Creado en</th>
        <th>Actualizado en</th>
        <th colspan="3">Acciones</th>
    </thead>
    <tbody>
    @foreach($usuarios as $usuarios)
        <tr>
            <td>{!! $usuarios->tipo_usuario !!}</td>
            <td>{!! $usuarios->nombre !!}</td>
            <td>{!! $usuarios->apellido !!}</td>
            <td>{!! $usuarios->codigo_sis !!}</td>
            <td>{!! $usuarios->direccion !!}</td>
            <td>{!! $usuarios->cedula !!}</td>
            <td>{!! $usuarios->telefono !!}</td>
            <td>{!! $usuarios->email !!}</td>
            <td>{!! $usuarios->created_at !!}</td>
            <td>{!! $usuarios->updated_at !!}</td>
            <td>
                {!! Form::open(['route' => ['usuarios.destroy', $usuarios->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('usuarios.show', [$usuarios->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('usuarios.edit', [$usuarios->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Esta seguro?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>