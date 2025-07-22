<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin — @yield('title','Dashboard')</title>

  <!-- Tailwind via CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
   <script src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js" defer></script>
</head>
<body class="bg-gray-100 text-gray-800 font-sans">

  {{-- Navbar --}}
  <nav class="bg-white shadow">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between h-16">
        <div class="flex">
          <a href="{{ route('admin.dashboard') }}" class="flex-shrink-0 flex items-center text-xl font-bold">
            Admin Panel
          </a>
          <div class="ml-6 flex space-x-4">
            <a href="{{ route('admin.dashboard') }}"
               class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('admin.dashboard') ? 'bg-gray-200' : '' }}">
              Dashboard
            </a>
            <a href="{{ route('admin.users.index') }}"
               class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('admin.users.*') ? 'bg-gray-200' : '' }}">
              Users
            </a>
            <a href="{{ route('admin.questions.index') }}"
               class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('admin.questions.*') ? 'bg-gray-200' : '' }}">
              Questions
            </a>
  
<a href="{{ route('admin.system.dashboard') }}"
   class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200 {{ request()->routeIs('admin.system.*') ? 'bg-gray-200' : '' }}">
  System
</a>

          </div>
        </div>

        <div class="flex items-center">
          <span class="mr-4">{{ Auth::user()->name }}</span>
          <form method="POST" action="{{ route('logout') }}">
            @csrf
            <button type="submit"
                    class="px-3 py-2 rounded-md text-sm font-medium hover:bg-gray-200">
              Logout
            </button>
          </form>
        </div>
      </div>
    </div>
  </nav>

  {{-- Main Content --}}
  <main class="py-8">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      @yield('content')
    </div>
  </main>

</body>
</html>
