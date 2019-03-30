<!-- Id Field -->
<div class="form-group">
    {!! Form::label('id', 'Id:') !!}
    <p>{!! $horarios->id !!}</p>
</div>

<!-- Horainicio Field -->
<div class="form-group">
    {!! Form::label('horaInicio', 'Horainicio:') !!}
    <p>{!! $horarios->horaInicio !!}</p>
</div>

<!-- Horafinal Field -->
<div class="form-group">
    {!! Form::label('horaFinal', 'Horafinal:') !!}
    <p>{!! $horarios->horaFinal !!}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{!! $horarios->created_at !!}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{!! $horarios->updated_at !!}</p>
</div>

