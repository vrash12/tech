@extends('layouts.admin')

@section('title','Manage Users')

@section('content')
  <div class="flex justify-between items-center mb-6">
    <h1 class="text-2xl font-semibold">Users</h1>
    <a href="{{ route('admin.users.create') }}"
       class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
      + New User
    </a>
  </div>

  <table class="w-full bg-white shadow rounded">
    <thead class="bg-gray-200">
      <tr>
        <th class="p-3 text-left">ID</th>
        <th class="p-3 text-left">Name</th>
        <th class="p-3 text-left">Email</th>
        <th class="p-3 text-center">Actions</th>
      </tr>
    </thead>
    <tbody>
      @foreach($users as $user)
      <tr class="border-t">
        <td class="p-3">{{ $user->id }}</td>
        <td class="p-3">{{ $user->name }}</td>
        <td class="p-3">{{ $user->email }}</td>
        <td class="p-3 text-center space-x-2">
          <a href="{{ route('admin.users.edit', $user) }}"
             class="text-blue-600 hover:underline">Edit</a>
          <form action="{{ route('admin.users.destroy', $user) }}" method="POST" class="inline">
            @csrf @method('DELETE')
            <button type="submit"
                    class="text-red-600 hover:underline"
                    onclick="return confirm('Delete this user?')">
              Delete
            </button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>

  <div class="mt-4">
    {{ $users->links() }}
  </div>
@endsection
