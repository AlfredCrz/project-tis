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
    {!! Form::submit('Guardar', ['class' => 'btn btn-primary', 'data-toggle' => 'modal', 'data-target' => '#myModal']) !!}
    <a href="{!! route('horas.index') !!}" class="btn btn-default">Cancelar</a>
</div>


<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content secondary">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title ">Dato Guardado</h4>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
      </div>
    </div>

  </div>
</div>