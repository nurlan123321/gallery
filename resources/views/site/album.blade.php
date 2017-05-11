@extends('layouts.main')
@section('title', 'Album Page')
@section('content')
<section>
@if($albums)
	<div class="container">
		<div class="row">
		@foreach($albums as $album)
			<div class="col-sm-4">
		    	<div class="thumbnail">
		      		<img src="{{asset('images/album/' . $album->image)}}" alt="...">
		      		<div class="caption">
		        		<h3><a href="{{url('/show/'.$album->id)}}">{{$album->title}}</a></h3>
		        		<p class="dates">{{$album->dates}}</p>
		        		<p>{{ substr($album->text, 0, 80) }}{{ strlen($album->text) > 80 ? "..." : "" }}</p>
		        		<p>Количество картинок: {{ $album->photo->count() }}</p>
		      		</div>
		    	</div>
		  	</div>
		@endforeach  	
		</div>
		<div class="text-center">
			{{ $albums->links() }}
		</div>	
@endif	
	</div>	
</section>
@endsection