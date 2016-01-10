json.array!(@grade_classes) do |grade_class|
  json.extract! grade_class, :id, :name, :creator_id, :modifier_id
  json.url grade_class_url(grade_class, format: :json)
end
