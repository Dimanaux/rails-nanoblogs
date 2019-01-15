json.extract! story, :id, :content, :views_count, :user_id, :created_at, :updated_at
json.url story_url(story, format: :json)
