json.array!(@digitals) do |digital|
  json.extract! digital, :id, :project_id, :title, :type, :description, :link, :file
  json.url digital_url(digital, format: :json)
end
