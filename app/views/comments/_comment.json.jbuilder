json.extract! comment, :id, :Post_id, :User_id, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)