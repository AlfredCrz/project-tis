<!-- Hora Inicio Field -->
<div class="form-group col-sm-6">
    {!! Form::label('hora_inicio', 'Hora Inicio:') !!}
    {!! Form::time('hora_inicio', null, ['class' => 'form-control']) !!}
</div>

<!-- Hora Final Field -->
<div class="form-group col-sm-6">
    {!! Form::label('hora_final', 'Hora Final:') !!}
    {!! Form::time('hora_final', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Guardar', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('horas.index') !!}" class="btn btn-default">Cancelar</a>
</div>
