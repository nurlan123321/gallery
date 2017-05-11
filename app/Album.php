<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $table = 'albums';
  
    protected $fillable = ['image', 'title', 'text', 'dates']; 

    public function photo(){
    	return $this->hasMany('App\Photo', 'album_id');
    }
}
