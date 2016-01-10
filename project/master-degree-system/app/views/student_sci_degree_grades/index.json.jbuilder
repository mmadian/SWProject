json.array!(@student_sci_degree_grades) do |student_sci_degree_grade|
  json.extract! student_sci_degree_grade, :id, :studentSciDegree_id, :year, :grade, :creator_id, :modifier_id
  json.url student_sci_degree_grade_url(student_sci_degree_grade, format: :json)
end
