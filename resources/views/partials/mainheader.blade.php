<!-- Main Header -->
<header class="main-header">

    <!-- Logo -->
    <a href="{{ url('/home') }}" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>F</b>UT</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>FUTE</b>soft</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
              <ul class="nav navbar-nav">

                <li class="active"><a href="{{ url('/') }}">Estudiante<span class="sr-only">(current)</span></a></li>
               
              </ul>
              
            </div><!-- /.navbar-collapse -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->
                
                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <img src="{{asset('/img/user2-160x160.jpg')}}" class="user-image" alt="User Image"/>
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">{{ Auth::user()->name }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- The user image in the menu -->
                        <li class="user-header">
                            <img src="{{asset('/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image" />
                            <p>
                                {{ Auth::user()->name }}
                                <small>{{ $variablefecha }}</small>
                            </p>
                        </li>
                       
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat">Perfil</a>
                            </div>
                            <div class="pull-right">
                                <a href="{{ url('/auth/logout') }}" class="btn btn-default btn-flat">Salir</a>
                            </div>
                        </li>

                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <!-- <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li> -->
            </ul>
        </div>



        <div class="navbar-custom-menu" >
              <ul class="nav navbar-nav">

            
                <li class="active"><a href="{{ url('/') }}">Cursos<span class="sr-only">(current)</span></a></li>
                
                <!-- <li class="active"><a href="{{ url('/lugrawibe') }}">Cursos<span class="sr-only">(current)</span></a></li> -->
               
                <!--<li><a href="#">nada</a></li>-->
              </ul>
              
        </div>

        
    </nav>
</header>