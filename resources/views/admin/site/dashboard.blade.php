@extends('admin.layouts.admin')
@section('title', 'Album Page')
@section('content')
	<div class="container">
		<div class="panel panel-default">
  			<div class="panel-body">
    			<h4 class="album-page">Альбомы</h4>
    			<a href="{{route('createAl')}}" class="btn btn-success pull-right">Добавить альбом</a>
    			<div class="clearfix"></div>
  			</div>
		</div>
		<div class="panel panel-default">
  			<div class="panel-body">
	  			<div class="row">
	  			@foreach($albums as $album)
	  				<div class="col-sm-4">
				    	<div class="thumbnail">
			      			<img src="{{asset('images/album/'.$album->image)}}" alt="...">
				      		<div class="caption">
				        		<h3><a href="{{url('admin/album/show/'.$album->id)}}">{{$album->title}}</a></h3>
				        		<p class="dates">{{$album->dates}}</p>
				        		<p>{{ substr($album->text, 0, 100) }}{{ strlen($album->text) > 100 ? "..." : "" }}</p>
				        		<p>Количество картинок: {{ $album->photo->count() }}</p>
				      		</div>
				    	</div>
			  		</div>
			  	@endforeach	
			  	</div>
			  	<div class="text-right">
					{{ $albums->links() }}
				</div>	
  			</div>
		</div>
</div>
@endsection