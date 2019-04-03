<!-- Dia Field -->
<div class="form-group col-sm-6">
    {!! Form::label('dia', 'Dia:') !!}
    {!! Form::select('dia', ['0' => 'Lunes', '1' => 'Martes', '2' => 'Miercoles', '3' => 'Jueves', '4' => 'Viernes', '5' => 'Sabado', '6' => 'Domingo'], null, ['class' => 'form-control']) !!}
</div>

<!-- Horario Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('horario_id', 'Horario Id:') !!}
    {!! Form::select('horario_id', $horas, null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Guardar', ['class' => 'btn btn-primary', 'data-toggle' => 'modal', 'data-target' => '#myModal']) !!}
    <a href="{!! route('grupos.index') !!}" class="btn btn-default">Cancelar</a>
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