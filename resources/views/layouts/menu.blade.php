<li class="{{ Request::is('horas*') ? 'active' : '' }}">
    <a href="{!! route('horas.index') !!}"><i class="fa fa-edit"></i><span>horas</span></a>
</li>

<li class="{{ Request::is('grupos*') ? 'active' : '' }}">
    <a href="{!! route('grupos.index') !!}"><i class="fa fa-edit"></i><span>grupos</span></a>
</li>

<li class="{{ Request::is('materias*') ? 'active' : '' }}">
    <a href="{!! route('materias.index') !!}"><i class="fa fa-edit"></i><span>materias</span></a>
</li>

<li class="{{ Request::is('permisos*') ? 'active' : '' }}">
    <a href="{!! route('permisos.index') !!}"><i class="fa fa-edit"></i><span>Permisos</span></a>
</li>

<li class="{{ Request::is('roles*') ? 'active' : '' }}">
    <a href="{!! route('roles.index') !!}"><i class="fa fa-edit"></i><span>Roles</span></a>
</li>

