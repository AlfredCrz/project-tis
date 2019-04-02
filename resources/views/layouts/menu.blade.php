<li class="{{ Request::is('horas*') ? 'active' : '' }}">
    <a href="{!! route('horas.index') !!}"><i class="fa fa-edit"></i><span>horas</span></a>
</li>

<li class="{{ Request::is('grupos*') ? 'active' : '' }}">
    <a href="{!! route('grupos.index') !!}"><i class="fa fa-edit"></i><span>grupos</span></a>
</li>

<li class="{{ Request::is('materias*') ? 'active' : '' }}">
    <a href="{!! route('materias.index') !!}"><i class="fa fa-edit"></i><span>materias</span></a>
</li>

