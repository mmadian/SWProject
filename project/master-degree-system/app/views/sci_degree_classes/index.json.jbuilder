json.array!(@sci_degree_classes) do |sci_degree_class|
  json.extract! sci_degree_class, :id, :name, :creator_id, :modifier_id
  json.url sci_degree_class_url(sci_degree_class, format: :json)
end
