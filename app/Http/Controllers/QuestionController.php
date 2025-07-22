<?php

namespace App\Http\Controllers;

use App\Models\Question;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Arr;

class QuestionController extends Controller
{
  
    public function index()
    {
        $questions = Question::with('options')->get();
        return response()->json($questions);
    }

   
    public function show(Question $question)
    {
        return response()->json(
            $question->load('options')
        );
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'text'          => 'required|string',
            'type'          => ['required', Rule::in(['single','multiple','scale'])],
            'tech_field_id' => 'nullable|exists:tech_fields,id',
            'options'       => 'sometimes|array',
            'options.*'     => 'string',
        ]);

        // 1) Create the question
        $question = Question::create(Arr::only($data, ['text','type','tech_field_id']));

        // 2) If it's a single‐ or multiple‐choice question, seed its options
        if (in_array($data['type'], ['single','multiple']) && !empty($data['options'])) {
            foreach ($data['options'] as $idx => $label) {
                $question->options()->create([
                    'text'  => $label,
                    'value' => $idx,
                ]);
            }
        }

        return response()->json(
            $question->load('options'),
            201
        );
    }

    /**
     * PUT /questions/{question}
     * Update text, type, tech_field_id, and options.
     */
    public function update(Request $request, Question $question)
    {
        $data = $request->validate([
            'text'          => 'sometimes|required|string',
            'type'          => ['sometimes','required', Rule::in(['single','multiple','scale'])],
            'tech_field_id' => 'sometimes|nullable|exists:tech_fields,id',
            'options'       => 'sometimes|array',
            'options.*'     => 'string',
        ]);

        // 1) Update the question fields
        $question->update(Arr::only($data, ['text','type','tech_field_id']));

    
        if (isset($data['type']) && in_array($data['type'], ['single','multiple'])) {
     
            $question->options()->delete();


            if (!empty($data['options'])) {
                foreach ($data['options'] as $idx => $label) {
                    $question->options()->create([
                        'text'  => $label,
                        'value' => $idx,
                    ]);
                }
            }
        }

        if (isset($data['type']) && $data['type'] === 'scale') {
            $question->options()->delete();
        }

        return response()->json(
            $question->load('options')
        );
    }

 
    public function destroy(Question $question)
    {
        $question->delete();
        return response()->json(null, 204);
    }
}
