json.extract! post, :id, :text, :modified, :user_id, :created_at, :updated_at, :comments
json.url post_url(post, format: :json)
