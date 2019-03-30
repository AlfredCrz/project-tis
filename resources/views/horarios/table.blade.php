<table class="table table-responsive" id="horarios-table">
    <thead>
        <th>Hora inicio</th>
        <th>Hora final</th>
        <th>Creado en</th>
        <th>Actualizado en</th>
        <th colspan="3">Acciones</th>
    </thead>
    <tbody>
    @foreach($horarios as $horarios)
        <tr>
            <td>{!! $horarios->horaInicio !!}</td>
            <td>{!! $horarios->horaFinal !!}</td>
            <td>{!! $horarios->created_at !!}</td>
            <td>{!! $horarios->updated_at !!}</td>
            <td>
                {!! Form::open(['route' => ['horarios.destroy', $horarios->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('horarios.show', [$horarios->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('horarios.edit', [$horarios->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Esta seguro ?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>