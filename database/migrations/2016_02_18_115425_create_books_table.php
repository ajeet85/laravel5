<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBooksTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		/*Schema::create('books', function(Blueprint $table)
		{
			//$table->increments('id');
			//$table->timestamps();
		});*/
		
		
		   //using doctorine its changes name whic is already  use  
			Schema::table('books', function($table)
			{
				$table->string('name', 50)->nullable();
				$table->string('cat_id', 50);
				$table->string('author', 50);
				$table->string('image', 50);
				
			});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('books');
	}

}
