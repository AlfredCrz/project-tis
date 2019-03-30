<li class="{{ Request::is('horarios*') ? 'active' : '' }}">
    <a href="{!! route('horarios.index') !!}"><i class="fa fa-edit"></i><span>Horarios</span></a>
</li>

<li class="{{ Request::is('grupos*') ? 'active' : '' }}">
    <a href="{!! route('grupos.index') !!}"><i class="fa fa-edit"></i><span>Grupos</span></a>
</li>

<li class="{{ Request::is('materias*') ? 'active' : '' }}">
    <a href="{!! route('materias.index') !!}"><i class="fa fa-edit"></i><span>Materias</span></a>
</li>

