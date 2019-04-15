<!-- Id Field -->
<div class="form-group">
    {!! Form::label('id', 'Id:') !!}
    <p>{!! $horas->id !!}</p>
</div>

<!-- Hora Inicio Field -->
<div class="form-group">
    {!! Form::label('hora_inicio', 'Hora Inicio:') !!}
    <p>{!! $horas->hora_inicio !!}</p>
</div>

<!-- Hora Final Field -->
<div class="form-group">
    {!! Form::label('hora_final', 'Hora Final:') !!}
    <p>{!! $horas->hora_final !!}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{!! $horas->created_at !!}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{!! $horas->updated_at !!}</p>
</div>

