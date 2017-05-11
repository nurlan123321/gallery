@extends('admin.layouts.admin')
@section('title', 'Photo Page')
@section('content')
<div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
			<h4 class="album-page">Детальная страница</h4>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-body">
		@if($photos->count() > 0)
  			<div class="row">
  			@foreach($photos as $photo)
  				<div class="col-md-3">
	  				<ul class="img-list">
	  					<li>
							<a href="{{asset('images/photos/'. $photo->image)}}" class="thumbnail show-admin">
					      	<img src="{{asset('images/photos/'. $photo->image)}}" alt="..."></a>
					      	
	  					</li>

	  				</ul>
			  	</div>
			 @endforeach
			  <div class="lightbox">
			 	<div class="overlay"></div>
		 			<img src="">
				 </div>	<!-- lightbox --> 	
  			</div>
  			@else
		  	<div class="no">
		  		<h4>Картинок нет</h4>
		  	</div>
		  	@endif 	
  		</div>
  	</div>		
</div>		
@endsection