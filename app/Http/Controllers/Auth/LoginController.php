<?php

namespace App\Http\Controllers\Auth;
// app/Http/Controllers/Auth/LoginController.php
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('auth.login');
    }

public function login(Request $request)
{
    $credentials = $request->validate([
        'email'    => ['required','email'],
        'password' => ['required','string'],
    ]);

    if (Auth::attempt($credentials, $request->boolean('remember'))) {
        $request->session()->regenerate();

        // Admins → admin dashboard
        if (Auth::user()->roles()->where('name', 'admin')->exists()) {
            return redirect()->route('admin.dashboard');
        }

        // Students → student dashboard
        return redirect()->route('dashboard');           // 🔑 changed line
    }

    return back()
        ->withErrors(['email' => 'These credentials do not match our records.'])
        ->onlyInput('email');
}
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('login');
    }
}
