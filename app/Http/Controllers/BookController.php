<?php namespace 

App\Http\Controllers;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator, Input, Redirect,DB; //usefull for all controller 
use App\Model\Book;

class BookController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	 
	 
	 
		public function __construct()
		{
			$this->middleware('auth');
		}
		
	 
			public function index()
			{
			// 
			
			//$books=Book::all();
			//echo "<pre>"; print_r($books); die;
			$books = DB::table('books')->paginate(3);
			return view('service_book.index',['books' => $books]); // here compact books acessed by view for ittration
			}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
		public function create()
		{
		return view('service_book.create');
		}
		
		/**
		* Store a newly created resource in storage.
		*
		* @return Response
		*/
		
		public function store(Request $request)
		{
		
			$rules = array(
					'name'    => 'required',
					'author'    => 'required',
			);
			
			$validator = Validator::make(Input::all(), $rules);
			//echo "<pre>"; print_r($validator->withErrors($validator)); die;
			// if the validator fails, redirect back to the form
			if ($validator->fails()) {
				return redirect('books/create')->withErrors($validator);
			}else {
					$book=$request->all(); // important!!
					Book::create($book);
					return redirect('books');
        }
		
		}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
	   $book=Book::find($id);
	   return view('service_book.show',compact('book'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
		public function edit($id)
		{
		$book=Book::find($id);
		return view('service_book.edit',compact('book'));
		}
		
		/**
		* Update the specified resource in storage.
		*
		* @param  int  $id
		* @return Response
		*/
		public function update(Request $request, $id)
		{
		 
		$bookUpdate=$request->all(); // important!!
		$book=Book::find($id);
		$book->update($bookUpdate);
		return redirect('books');
		}
	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
		public function destroy($id)
		{
			Book::find($id)->delete();
			return redirect('books');
		}

}
