<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function dashboard()
    {
        return view('admin.pages.dashboard')->with('title','Dashboard');
    }

    public function profile()
    {
        $id = Auth::user()->id;
        $user = User::find($id);
        return view('admin.pages.profile',compact('user'))->with('title','Profile');
    }

    public function logout()
    {
        Auth::logout();
        Session::flush();

        return redirect()->route('home');

    }
}
