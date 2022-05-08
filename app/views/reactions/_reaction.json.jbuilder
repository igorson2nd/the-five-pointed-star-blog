json.extract! reaction, :id, :type, :user_id, :comment_id, :created_at, :updated_at
json.url reaction_url(reaction, format: :json)
