<table class="table table-responsive" id="permisos-table">
    <thead>
        <th>Nombre</th>
        <th>Descripcion</th>
        <th>Creado en</th>
        <th>Actualizado en</th>
        <th colspan="3">Acciones</th>
    </thead>
    <tbody>
    @foreach($permisos as $permisos)
        <tr>
            <td>{!! $permisos->nombre !!}</td>
            <td>{!! $permisos->descripcion !!}</td>
            <td>{!! $permisos->created_at !!}</td>
            <td>{!! $permisos->updated_at !!}</td>
            <td>
                {!! Form::open(['route' => ['permisos.destroy', $permisos->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('permisos.show', [$permisos->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('permisos.edit', [$permisos->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Esta seguro?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>