<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{ config('app.name', 'Tech Recommender') }} – @yield('title')</title>

  {{-- Tailwind via CDN for rapid prototyping --}}
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          animation: {
            'pulse': 'pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
            'text-shimmer': 'text-shimmer 3s ease-in-out infinite',
          },
        }
      }
    }
  </script>

  {{-- Custom styles for enhanced pages --}}
  <style>
    @keyframes text-shimmer {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

 
    .animate-text-shimmer { animation: text-shimmer 3s ease-in-out infinite; }
    .bg-size-200 { background-size: 200% 200%; }
    .bg-pos-0 { background-position: 0% 50%; }
    .bg-pos-100 { background-position: 100% 50%; }

    /* Background grid pattern */
    .bg-grid-pattern {
      background-image:
        linear-gradient(rgba(255,255,255,0.1) 1px, transparent 1px),
        linear-gradient(90deg, rgba(255,255,255,0.1) 1px, transparent 1px);
      background-size: 50px 50px;
    }

    /* Floating particles */
    .particle {
      position: absolute;
      background: rgba(255, 255, 255, 0.1);
      border-radius: 50%;
      animation: float 20s infinite linear;
    }
    .particle-1 { width: 8px;  height: 8px;  left: 10%; animation-delay: 0s; }
    .particle-2 { width:12px;  height:12px;  left: 20%; animation-delay:-5s; }
    .particle-3 { width: 6px;  height: 6px;  left: 60%; animation-delay:-10s; }
    .particle-4 { width:10px;  height:10px;  left: 80%; animation-delay:-15s; }
    .particle-5 { width:14px;  height:14px;  left: 90%; animation-delay:-7s; }

    @keyframes float {
      0%   { transform: translateY(100vh) rotate(0deg); opacity:0; }
      10%  { opacity:1; }
      90%  { opacity:1; }
      100% { transform: translateY(-100px) rotate(360deg); opacity:0; }
    }

    @keyframes slide-down {
      from { opacity:0; transform: translateY(-10px); }
      to   { opacity:1; transform: translateY(0); }
    }
    .animate-slide-down { animation: slide-down 0.3s ease-out; }

    /* Enhanced shadows */
    .shadow-3xl {
      box-shadow: 0 35px 60px -12px rgba(0,0,0,0.25);
    }
  </style>

  {{-- Livewire styles --}}
  @livewireStyles

  {{-- Optionally your compiled CSS --}}
  {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> --}}
</head>
<body class="font-sans antialiased bg-gray-100 text-gray-900 relative overflow-x-hidden">

  {{-- Floating particles --}}
  <div class="particle particle-1"></div>
  <div class="particle particle-2"></div>
  <div class="particle particle-3"></div>
  <div class="particle particle-4"></div>
  <div class="particle particle-5"></div>

  @hasSection('hide-nav')
    {{-- No nav --}}
  @else
    @hasSection('custom-nav')
      @yield('custom-nav')
    @else
      <nav class="bg-white shadow relative z-50">
        <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
          <a href="{{ url('/') }}"
             class="text-2xl font-bold text-gray-800 hover:text-red-600 transition-colors duration-300">
            {{ config('app.name', 'TechRecommender') }}
          </a>
          @guest
      <a href="{{ route('login') }}"
         class="px-4 py-2 rounded-lg hover:bg-gray-100 transition-colors duration-300 font-medium">
        Log in
      </a>
    @else
      <div class="flex items-center space-x-4">
        {{-- Student nav links --}}
        <a href="{{ route('dashboard') }}"
           class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('dashboard') ? 'bg-gray-200' : '' }}">
          Dashboard
        </a>
        <a href="{{ route('student.questionnaire.start') }}"
           class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('student.questionnaire.*') ? 'bg-gray-200' : '' }}">
          Questionnaire
        </a>
        <a href="{{ route('student.results') }}"
           class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('student.results') ? 'bg-gray-200' : '' }}">
          Results
        </a>

        <span class="text-gray-700">Hello, {{ Auth::user()->name }}</span>

        <form method="POST" action="{{ route('logout') }}" class="inline">
          @csrf
          <button type="submit"
                  class="px-4 py-2 rounded-lg hover:bg-gray-100 transition-colors duration-300 font-medium">
            Log out
          </button>
        </form>
      </div>
    @endguest

        </div>
      </nav>
    @endif
  @endif

  @hasSection('fullscreen')
    {{-- Full-screen content --}}
    @yield('content')
  @else
    {{-- Main container --}}
<main class="max-w-4xl mx-auto px-4 py-8 ">
      @yield('content')
    </main>
  @endif

  {{-- Livewire scripts --}}
  @livewireScripts
</body>
</html>
