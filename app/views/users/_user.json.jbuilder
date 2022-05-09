json.extract! user, :id, :username, :created_at, :updated_at, :posts
json.url user_url(user, format: :json)
