@extends('admin.layouts.admin')
@section('title', 'Create Photo Page')
@section('content')
<div class="container">
	<div class="row">
		<div class="panel panel-default">
	  			<div class="panel-body">
	    			<h4 class="album-page">Create Photo Page</h4>
	    			<div class="clearfix"></div>
	  			</div>
			</div>
			<div class="panel panel-default">
  				<div class="panel-body">
  					<div class="col-sm-offset-3 col-sm-6 col-sm-offset-3">
						<form action="{{route('createPhoto')}}" method="post" enctype="multipart/form-data">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<div class="form-group">
								<label for="title">Название</label>
								<input type="text" class="form-control" id="title" name="title">
							</div>
							<div class="form-group">
								<label for="category">Album</label>
								<select class="form-control" id="category" name="album_id">
									@foreach($albums as $album)
										<option value="{{$album->id}}">{{$album->title}}</option>
									@endforeach	
								</select>
							</div>
							<div class="form-group">
								<label for="file">Картинка</label>
								<input type="file" id="file" name="image">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
					</div>	
  				</div>
  			</div>
  		</div>
  	</div>
</div>  			
@endsection