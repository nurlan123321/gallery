<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Album;
use App\Photo;
class AlbummController extends Controller
{
    public function index()
    {
        $albums = Album::orderBy('dates', 'DESC')->paginate(3);
        return view('admin.site.dashboard', compact('albums', 'photos'));
    }

    public function create(Request $request)
    {
 		if ($request->isMethod('post')) {
	        //Upload
	        if ($request->hasFile('image')) {
	            $file = $request->file('image');// images eto name pole inputa
	            $input['image'] = $file->getClientOriginalName();//polu4aem name kartinki kak ono est 
	            $file->move(public_path().'/images/album', $input['image']);
	        }
	        $album = new Album();
	        $album->title = $request->get('title');
	        $album->dates = $request->get('dates');
	        $album->text = $request->get('text');
	        $album->fill($input);
	        $message = 'Post published successfully';
	        $album->save(); 
	        return redirect('admin/album/home')->withMessage($message);
		}
     	if (view()->exists('admin.site.create-album')) {
    		return view('admin.site.create-album');
    	}else{
			return 'Страница не существует ошибка 404';
		}
    }

    public function show($id){
        $photos = Photo::where('album_id', $id)->orderBy('id', 'DESC')->get();
        return view('admin.site.show', compact('photos'));
    }
}
