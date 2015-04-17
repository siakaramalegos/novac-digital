json.array!(@projects) do |project|
  json.extract! project, :id, :serial_id, :owner_id, :title, :description, :production_notes, :production_date, :production_year
  json.url project_url(project, format: :json)
end
