<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('login.index');
    }

    public function process(Request $request)
    {
        $input = $request->validate([
            'username' => 'required',
            'password' => 'required'
        ]);

        if (Auth::attempt(['username' => $input['username'], 'password' => $input['password']])) {
            $request->session()->regenerate();
            return redirect()->intended('home');
        }

        return redirect()->route('home')->withErrors('Login failed. Please try again.');
    }

    public function logout(Request $request)
    {
        $request->session()->flush();
        Auth::logout();
        return Redirect('login');
    }
}
