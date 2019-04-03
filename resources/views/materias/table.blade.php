<table class="table table-responsive" id="materias-table">
    <thead>
        <th>Nombre</th>
        <th>Docente</th>
        <th>Grupo Id</th>
        <th>Creado en</th>
        <th>Actualizado en</th>
        <th colspan="3">Acciones</th>
    </thead>
    <tbody>
    @foreach($materias as $materias)
        <tr>
            <td>{!! $materias->nombre !!}</td>
            <td>{!! $materias->gestion !!}</td>
            <td>{!! $materias->grupo_id !!}</td>
            <td>{!! $materias->created_at !!}</td>
            <td>{!! $materias->updated_at !!}</td>
            <td>
                {!! Form::open(['route' => ['materias.destroy', $materias->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('materias.show', [$materias->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('materias.edit', [$materias->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Esta seguro?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>