json.array!(@digitals) do |digital|
  json.extract! digital, :id, :project_id, :title, :type, :description, :link, :file_type
  json.url digital_url(digital, format: :json)
end
