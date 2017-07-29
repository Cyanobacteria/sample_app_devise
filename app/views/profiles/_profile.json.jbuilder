json.extract! profile, :id, :name, :user_id, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :created_at, :updated_at
json.url profile_url(profile, format: :json)
