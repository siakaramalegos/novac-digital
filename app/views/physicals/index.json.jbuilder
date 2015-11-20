json.array!(@physicals) do |physical|
  json.extract! physical, :id, :tape, :new_box, :old_box, :title, :label_info, :date_label, :owner_id, :master_status, :format_id, :brand_id, :condition_id, :notes, :date_actual, :location, :process_step_id
  json.url physical_url(physical, format: :json)
end
