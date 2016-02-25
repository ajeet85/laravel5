<?php namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Book extends Model {

	 protected $fillable=[
					'name',
					'cat_id',
					'author',
					'image'
    ];

}
