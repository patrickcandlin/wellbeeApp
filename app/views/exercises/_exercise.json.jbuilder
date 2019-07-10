json.extract! exercise, :id, :exercise_title, :exercise_content, :user_id, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
