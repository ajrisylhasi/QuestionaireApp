json.extract! question, :id, :questionnaire_id, :text, :question_type, :possible_solutions, :created_at, :updated_at
json.url question_url(question, format: :json)
