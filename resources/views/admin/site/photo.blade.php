@extends('admin.layouts.admin')
@section('title', 'Photo Page')
@section('content')
<div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
			<h4 class="album-page">Все Картинки</h4>
			<a href="{{route('createPhoto')}}" class="btn btn-success pull-right">Добавить фото</a>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-body">
  			<div class="row">
  			@foreach($photos as $photo)
  				<div class="col-md-3">
	  				<ul class="img-list">
	  					<li>
	  						<a href="{{asset('images/photos/'. $photo->image)}}" class="thumbnail show">
					      <img src="{{asset('images/photos/'. $photo->image)}}" alt="...">
					    </a>
					     
	  					</li>
	  					 <a href="{{url('/admin/album/show/'.$photo->album->id)}}"><span class="label label-default">{{$photo->album->title}}</span></a>
	  				</ul>
			  	</div>
			  @endforeach 
			 	<div class="lightbox">
			 		<div class="overlay"></div>
		 				<img src="">
				</div>	<!-- lightbox -->
  			</div>
  		</div>
  	</div>	
</div>		
@endsection