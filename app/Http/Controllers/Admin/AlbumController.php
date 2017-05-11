<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Album;
use App\Photo;
class AlbumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $albums = Album::orderBy('id', 'DESC')->paginate(3);
        return view('admin.site.dashboard', compact('albums'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Create-album view
        return view('admin.site.create-album');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
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
        return redirect('admin')->withMessage($message);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id){
        $albums = Photo::where('album_id', $id)->get();
        return view('admin.site.show', compact('albums'));
    }

    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
