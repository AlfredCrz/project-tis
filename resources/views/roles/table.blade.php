<table class="table table-responsive" id="roles-table">
    <thead>
        <th>Nombre</th>
        <th>Descripcion</th>
        <th>Permiso Id</th>
        <th>Creado en</th>
        <th>Actualizado en</th>
        <th colspan="3">Acciones</th>
    </thead>
    <tbody>
    @foreach($roles as $roles)
        <tr>
            <td>{!! $roles->nombre !!}</td>
            <td>{!! $roles->descripcion !!}</td>
            <td>{!! $roles->permiso_id !!}</td>
            <td>{!! $roles->created_at !!}</td>
            <td>{!! $roles->updated_at !!}</td>
            <td>
                {!! Form::open(['route' => ['roles.destroy', $roles->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('roles.show', [$roles->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('roles.edit', [$roles->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Esta seguro?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>