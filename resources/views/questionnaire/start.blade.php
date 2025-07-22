{{-- resources/views/questionnaire/start.blade.php --}}
@extends('layouts.app')

@section('title','Questionnaire')

@section('content')
  <div class="bg-white p-6 rounded-lg shadow mb-6">
    <h1 class="text-2xl font-semibold">Your Profile Questionnaire</h1>
  </div>

  {{-- This is the Livewire component that will actually render the questions --}}
  <livewire:questionnaire-wizard />
@endsection
