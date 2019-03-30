<!-- Nombre Field -->
<div class="form-group col-sm-6">
    {!! Form::label('nombre', 'Nombre:') !!}
    {!! Form::text('nombre', null, ['class' => 'form-control']) !!}
</div>

<!-- Horario Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('horario_id', 'Horario:') !!}
    {!! Form::select('horario_id', $horarios, null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Guardar', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('grupos.index') !!}" class="btn btn-default">Cancelar</a>
</div>
