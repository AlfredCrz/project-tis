@extends('app')

@section('htmlheader_title')
  Tis
@endsection


@section('main-content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-0">
			<div class="panel panel-default">
				<div class="panel-heading">

					  <ol class="breadcrumb">
                    <li><a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i>Inicio</a></li>
                    
                    </ol>


				</div>

				<div class="panel-body">

					

					<div class='sombra1' style="width:70%; text-align:center; padding:none;">
					</div>

					<!-- <div style="text-align:center;" > <img src="" alt="Facultad" />

					</div>  -->
					



				</div>
			</div>
		</div>
	</div>
</div>
@endsection
