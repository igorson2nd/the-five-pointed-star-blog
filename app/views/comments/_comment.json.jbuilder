json.extract! comment, :id, :text, :modified, :user_id, :post_id, :created_at, :updated_at, :reactions
json.url comment_url(comment, format: :json)
