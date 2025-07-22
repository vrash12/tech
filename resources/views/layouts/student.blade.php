{{-- resources/views/layouts/student.blade.php --}}
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{ config('app.name', 'Tech Recommender') }} – @yield('title')</title>

  {{-- Tailwind via CDN --}}
  <script src="https://cdn.tailwindcss.com"></script>

  {{-- Alpine.js for interactivity --}}
  <script src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js" defer></script>

  {{-- Custom styles / animations --}}
  <style>
    /* shimmering text */
    @keyframes text-shimmer {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }
    .animate-text-shimmer {
      background: linear-gradient(90deg, rgba(255,255,255,0.1), rgba(255,255,255,0.4), rgba(255,255,255,0.1));
      background-size: 200% 200%;
      animation: text-shimmer 3s ease-in-out infinite;
      -webkit-background-clip: text;
      color: transparent;
    }
  </style>

  @livewireStyles
</head>
<body class="bg-gray-100 font-sans antialiased min-h-screen flex flex-col">

  {{-- NAVBAR --}}
  <nav class="bg-white shadow-md">
    <div class="max-w-6xl mx-auto px-4 py-4 flex justify-between items-center">
      <a href="{{ route('dashboard') }}"
         class="text-2xl font-bold text-gray-800 hover:text-blue-600 transition">
        {{ config('app.name', 'Tech Recommender') }}
      </a>

      @auth
        <div class="flex items-center space-x-4">
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

          <span class="text-gray-700 text-sm">Hello, {{ Auth::user()->name }}</span>

          <form method="POST" action="{{ route('logout') }}" class="inline">
            @csrf
            <button type="submit"
                    class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200">
              Log Out
            </button>
          </form>
        </div>
      @else
        <a href="{{ route('login') }}"
           class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200">
          Log In
        </a>
      @endauth
    </div>
  </nav>

  {{-- MAIN CONTENT --}}
  <main class="flex-1 max-w-4xl mx-auto px-4 py-8">
    @yield('content')
  </main>

  @livewireScripts
</body>
</html>
