json.extract! recipe, :id, :recipe_title, :recipe_content, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
