json.extract! submission, :id, :questionnaire_id, :email, :created_at, :updated_at
json.url submission_url(submission, format: :json)
