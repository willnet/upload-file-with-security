json.extract! secret, :id, :name, :photo_data, :created_at, :updated_at
json.url secret_url(secret, format: :json)
