<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Album;
use App\Photo;
class IndexController extends Controller
{
    public function index(){
    	$albums = Album::orderBy('dates', 'DESC')->paginate(6);
    	return view('site.album', compact('albums'));
    }

    public function getPhoto($id){
    	$album = Album::find($id);
    	$photos = Photo::where('album_id', $id)->orderBy('id', 'DESC')->get();

    	return view('site.show', compact('photos', 'album'));
    }
}
