<!-- Nombre Field -->
<div class="form-group col-sm-6">
    {!! Form::label('nombre', 'Nombre:') !!}
    {!! Form::text('nombre', null, ['class' => 'form-control']) !!}
</div>

<!-- Codigo Field -->
<div class="form-group col-sm-6">
    {!! Form::label('codigo', 'Codigo:') !!}
    {!! Form::number('codigo', null, ['class' => 'form-control']) !!}
</div>

<!-- Gestion Field -->
<div class="form-group col-sm-6">
    {!! Form::label('gestion', 'Gestion:') !!}
    {!! Form::text('gestion', null, ['class' => 'form-control']) !!}
</div>

<!-- Grupo Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('grupo_id', 'Grupo:') !!}
    {!! Form::select('grupo_id', $grupos, null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Guardar', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('materias.index') !!}" class="btn btn-default">Cancelar</a>
</div>
