{{-- resources/views/student/results.blade.php --}}
@extends('layouts.student')

@section('content')
<div class="max-w-lg mx-auto mt-8 bg-white p-6 shadow rounded">
  <h2 class="text-2xl font-bold mb-4">Your Top Recommendations</h2>

  @if($recommendations->isEmpty())
    <p class="text-gray-700">No recommendations found. Please complete the questionnaire first.</p>
    <a href="{{ route('student.questionnaire.start') }}"
       class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
      Take Questionnaire
    </a>
  @else
    <ol class="list-decimal pl-5 space-y-4">
      @foreach($recommendations->take(3) as $rec)
        <li class="bg-gray-50 p-4 rounded shadow">
          <div class="flex justify-between items-center">
            <span class="font-medium">{{ $rec->techField->name }}</span>
            <span class="text-sm text-gray-600">{{ round($rec->score * 100) }}%</span>
          </div>
          <p class="text-gray-600 mt-1">{{ $rec->techField->description }}</p>
        </li>
      @endforeach
    </ol>
    <form method="POST" action="{{ route('student.results.download') }}" class="mt-6">
      @csrf
      <button
        type="submit"
        class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
      >
        Download PDF of Results
      </button>
    </form>
  @endif
</div>
@endsection
