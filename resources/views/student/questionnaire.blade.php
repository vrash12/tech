{{-- resources/views/student/questionnaire.blade.php --}}
@extends('layouts.student')

@section('title', 'Questionnaire')

@section('content')
<div
  x-data="questionnaire()"
  x-init="init()"
  class="max-w-2xl mx-auto mt-10 bg-white p-8 rounded-lg shadow overflow-hidden"
>
  {{-- progress bar --}}
  <div class="w-full h-3 bg-gray-200 rounded mb-8">
    <div
      class="h-3 bg-blue-600 rounded transition-all duration-300"
      :style="`width: ${percent}%`"
    ></div>
  </div>

  {{-- question cards --}}
  <template x-for="(q, idx) in questions" :key="q.id">
    <div x-show="step === idx" x-transition.opacity>
      <h2 class="text-xl font-semibold mb-4">
        <span x-text="idx + 1"></span>. <span x-text="q.text"></span>
      </h2>

      <template x-if="q.type === 'scale'">
        <div class="flex space-x-4 mt-2">
          <template x-for="i in 5" :key="i">
            <label class="flex flex-col items-center">
              <input
                type="radio"
                :name="`answers[${q.id}]`"
                :value="i"
                x-model="answers[q.id]"
                class="form-radio h-5 w-5 text-blue-600"
              >
              <span x-text="i" class="text-sm"></span>
            </label>
          </template>
        </div>
      </template>

      <template x-if="q.type === 'single'">
        <div class="space-y-2 mt-2">
          <template x-for="opt in q.options" :key="opt.id">
            <label class="flex items-center space-x-2">
              <input
                type="radio"
                :name="`answers[${q.id}]`"
                :value="opt.value"
                x-model="answers[q.id]"
                class="form-radio h-4 w-4 text-blue-600"
              >
              <span x-text="opt.text"></span>
            </label>
          </template>
        </div>
      </template>

      <template x-if="q.type === 'multiple'">
        <div class="space-y-2 mt-2">
          <template x-for="opt in q.options" :key="opt.id">
            <label class="flex items-center space-x-2">
              <input
                type="checkbox"
                :value="opt.value"
                x-model="answers[q.id]"
                class="form-checkbox h-4 w-4 text-blue-600"
              >
              <span x-text="opt.text"></span>
            </label>
          </template>
        </div>
      </template>

      <p
        x-show="errors[q.id]"
        x-text="errors[q.id]"
        class="text-red-600 text-sm mt-2"
      ></p>
    </div>
  </template>

  {{-- nav buttons --}}
  <div class="flex justify-between mt-10">
    <button
      type="button"
      @click="prev()"
      x-show="step > 0"
      class="px-4 py-2 bg-gray-200 rounded hover:bg-gray-300"
    >
      ‹ Back
    </button>

    <button
      type="button"
      @click="next()"
      x-show="!isLast"
      class="ml-auto px-6 py-2 bg-blue-600 text-white rounded hover:bg-blue-700"
    >
      Next ›
    </button>

    <form
      method="POST"
      action="{{ route('student.questionnaire.submit') }}"
      x-ref="form"
      x-show="isLast"
      class="ml-auto"
    >
      @csrf
      <input type="hidden" name="answers" :value="JSON.stringify(answers)">
      <button
        type="submit"
        class="px-6 py-2 bg-green-600 text-white rounded hover:bg-green-700"
      >
        Submit
      </button>
    </form>
  </div>
</div>
<script>
    console.log('🚚 questions ->', @json($jsQuestions));
</script>

@endsection
