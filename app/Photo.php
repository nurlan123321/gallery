<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    protected $table = 'photos';
  
    protected $fillable = ['image', 'title', 'album_id']; 

    public function album(){
    	return $this->belongsTo('App\Album', 'album_id');
    }
}
