@extends('layouts.admin')

@section('title','Edit User')

@section('content')
  <h1 class="text-2xl font-semibold mb-6">Edit User</h1>

  <form action="{{ route('admin.users.update', $user) }}" method="POST"
        class="bg-white p-6 rounded-lg shadow space-y-4">
    @csrf @method('PUT')

    <div>
      <label class="block mb-1 font-medium">Name</label>
      <input type="text" name="name" value="{{ old('name', $user->name) }}" required
             class="w-full border px-3 py-2 rounded @error('name') border-red-500 @enderror">
      @error('name') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
    </div>

    <div>
      <label class="block mb-1 font-medium">Email</label>
      <input type="email" name="email" value="{{ old('email', $user->email) }}" required
             class="w-full border px-3 py-2 rounded @error('email') border-red-500 @enderror">
      @error('email') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
    </div>

    <div>
      <label class="block mb-1 font-medium">Password (leave blank to keep current)</label>
      <input type="password" name="password"
             class="w-full border px-3 py-2 rounded @error('password') border-red-500 @enderror">
      @error('password') <p class="text-red-600 text-sm">{{ $message }}</p> @enderror
    </div>

    <div>
      <label class="block mb-1 font-medium">Confirm Password</label>
      <input type="password" name="password_confirmation"
             class="w-full border px-3 py-2 rounded">
    </div>

    <button type="submit"
            class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
      Update User
    </button>
  </form>
@endsection
