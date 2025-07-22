{{--resources/views/admin/dashboard.blade.php--}}
@extends('layouts.admin')

@section('title','Dashboard')

@section('content')
  <h1 class="text-3xl font-semibold mb-6">Welcome, {{ Auth::user()->name }}</h1>

  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
    {{-- Users Card --}}
    <a href="{{ route('admin.users.index') }}" class="group block bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
      <div class="flex items-center">
        <svg class="h-8 w-8 text-blue-500 group-hover:text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M12 5l7 7-7 7"/>
        </svg>
        <span class="ml-4 text-lg font-medium">Manage Users</span>
      </div>
      <p class="mt-2 text-gray-600 group-hover:text-gray-800">Create, edit, and delete student and admin accounts.</p>
    </a>

    {{-- Questions Card --}}
    <a href="{{ route('admin.questions.index') }}" class="group block bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
      <div class="flex items-center">
        <svg class="h-8 w-8 text-green-500 group-hover:text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6M12 9v6"/>
        </svg>
        <span class="ml-4 text-lg font-medium">Manage Questions</span>
      </div>
      <p class="mt-2 text-gray-600 group-hover:text-gray-800">Add, update, or remove questionnaire items and options.</p>
    </a>

    {{-- System Data Card --}}
    <div class="group block bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
      <form action="{{ route('admin.system.retrain') }}" method="POST" class="space-y-4">
        @csrf
        <div class="flex items-center">
          <svg class="h-8 w-8 text-yellow-500 group-hover:text-yellow-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v8m4-4H8"/>
          </svg>
          <span class="ml-4 text-lg font-medium">Retrain Model</span>
        </div>
        <p class="mt-2 text-gray-600 group-hover:text-gray-800">Rebuild the decision tree with latest data.</p>
        <button type="submit" 
                class="mt-4 inline-block bg-yellow-500 text-white px-4 py-2 rounded hover:bg-yellow-600 transition">
          Retrain Now
        </button>
      </form>
    </div>

    {{-- (Optional) Logs or Stats Card --}}
    <a href="#" class="group block bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
      <div class="flex items-center">
        <svg class="h-8 w-8 text-purple-500 group-hover:text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 7h18M3 12h18M3 17h18"/>
        </svg>
        <span class="ml-4 text-lg font-medium">View Logs</span>
      </div>
      <p class="mt-2 text-gray-600 group-hover:text-gray-800">See usage statistics and recent activity.</p>
    </a>
  </div>
@endsection
