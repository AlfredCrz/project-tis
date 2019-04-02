<table class="table table-responsive" id="horas-table">
    <thead>
        <th>Hora Inicio</th>
        <th>Hora Final</th>
        <th>Creado en</th>
        <th>Actualizado en</th>
        <th colspan="3">Acciones</th>
    </thead>
    <tbody>
    @foreach($horas as $horas)
        <tr>
            <td>{!! $horas->hora_inicio !!}</td>
            <td>{!! $horas->hora_final !!}</td>
            <td>{!! $horas->created_at !!}</td>
            <td>{!! $horas->updated_at !!}</td>
            <td>
                {!! Form::open(['route' => ['horas.destroy', $horas->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('horas.show', [$horas->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('horas.edit', [$horas->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Esta seguro?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>