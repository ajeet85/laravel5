<?php namespace App\Http\Middleware;

use Closure;
use Illuminate\Contracts\Auth\Guard;
use Auth;
use Illuminate\Routing\Controller;
class AdminMiddleware {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{    
	     
			if(Auth::check())
			{
					
				if ($request->user()->type != 'A')
					{
					    Auth::logout();
					   //echo "check admin"; 
						//return redirect('home');
						//return redirect()->guest('auth/login');
						return view('auth.login')->withErrors('You are not logged in As Administrator');
					}
					
					return $next($request);	
			}
			else
			{
				return redirect()->guest('auth/login');
			}
			
			
	}
	
	

}
