@extends('layouts.admin')

@section('title','Manage Questions')

@section('content')
  <div class="flex justify-between items-center mb-6">
    <h1 class="text-2xl font-semibold">Questions</h1>
    <a href="{{ route('admin.questions.create') }}"
       class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
      + New Question
    </a>
  </div>

  <table class="w-full bg-white shadow rounded">
    <thead class="bg-gray-200">
      <tr>
        <th class="p-3 text-left">ID</th>
        <th class="p-3 text-left">Text</th>
        <th class="p-3 text-left">Type</th>
        <th class="p-3 text-left">Field</th>
        <th class="p-3 text-center">Actions</th>
      </tr>
    </thead>
    <tbody>
      @foreach($questions as $q)
      <tr class="border-t">
        <td class="p-3">{{ $q->id }}</td>
        <td class="p-3">{{ Str::limit($q->text, 50) }}</td>
        <td class="p-3">{{ ucfirst($q->type) }}</td>
        <td class="p-3">{{ optional($q->techField)->name }}</td>
        <td class="p-3 text-center space-x-2">
          <a href="{{ route('admin.questions.edit', $q) }}"
             class="text-blue-600 hover:underline">Edit</a>
          <form action="{{ route('admin.questions.destroy', $q) }}"
                method="POST" class="inline">
            @csrf @method('DELETE')
            <button type="submit"
                    class="text-red-600 hover:underline"
                    onclick="return confirm('Delete this question?')">
              Delete
            </button>
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>

  <div class="mt-4">
    {{ $questions->links() }}
  </div>
@endsection
