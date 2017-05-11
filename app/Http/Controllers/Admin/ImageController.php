<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Album;
use App\Photo;
class ImageController extends Controller
{
     public function index()
    {
    	$album = Album::where('title')->get();
    	$photos = Photo::orderBy('id', 'DESC')->get();
        return view('admin.site.photo', compact('album', 'photos'));
    }

    public function create(Request $request)
    {
 		if ($request->isMethod('post')) {
	       	//Upload
        	if ($request->hasFile('image')) {
	            $file = $request->file('image');// images eto name pole inputa
	            $input['image'] = $file->getClientOriginalName();//polu4aem name kartinki kak ono est 
	            $file->move(public_path().'/images/photos', $input['image']);
       		}
	        $album = new Photo();
	        $album->title = $request->get('title');
	        $album->album_id = $request->get('album_id');
	        $album->fill($input);
	        $message = 'Post published successfully';
	        $album->save(); 
	        return redirect('admin/photo')->withMessage($message);
		}
     	if (view()->exists('admin.site.create-photo')) {
			$albums = Album::all();
        	return view('admin.site.create-photo', compact('albums'));
    	}else{
			return 'Страница не существует ошибка 404';
		}
    }
}
