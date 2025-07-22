@extends('layouts.admin')

@section('title','Create User')

@section('content')
  <h1 class="text-2xl font-semibold mb-6">New User</h1>

  <form action="{{ route('admin.users.store') }}" method="POST"
        class="bg-white p-6 rounded-lg shadow space-y-4">
    @csrf

    <div>
      <label class="block mb-1 font-medium">Name</label>
      <input type="text" name="name" value="{{ old('name') }}" required
             class="w-full border px-3 py-2 rounded @error('name') border-red-500 @enderror">
      @error('name') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
    </div>

    <div>
      <label class="block mb-1 font-medium">Email</label>
      <input type="email" name="email" value="{{ old('email') }}" required
             class="w-full border px-3 py-2 rounded @error('email') border-red-500 @enderror">
      @error('email') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
    </div>

    <div>
      <label class="block mb-1 font-medium">Password</label>
      <input type="password" name="password" required
             class="w-full border px-3 py-2 rounded @error('password') border-red-500 @enderror">
      @error('password') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
    </div>

    <div>
      <label class="block mb-1 font-medium">Confirm Password</label>
      <input type="password" name="password_confirmation" required
             class="w-full border px-3 py-2 rounded">
    </div>

    <button type="submit"
            class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">
      Create User
    </button>
  </form>
@endsection
