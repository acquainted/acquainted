json.array!(@profiles) do |profile|
  json.extract! profile, :id, :position, :department, :about, :current_projects, :karma, :user_id
  json.url profile_url(profile, format: :json)
end
