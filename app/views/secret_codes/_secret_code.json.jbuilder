json.extract! secret_code, :id, :code, :user_id, :created_at, :updated_at
json.url secret_code_url(secret_code, format: :json)
