json.array!(@projects) do |project|
  json.extract! project, :id, :serial_id, :owner_id, :title, :description, :production_notes, :date_production, :production_year
  json.url project_url(project, format: :json)
end
