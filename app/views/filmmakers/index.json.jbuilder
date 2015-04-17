json.array!(@filmmakers) do |filmmaker|
  json.extract! filmmaker, :id, :name, :email, :phone
  json.url filmmaker_url(filmmaker, format: :json)
end
