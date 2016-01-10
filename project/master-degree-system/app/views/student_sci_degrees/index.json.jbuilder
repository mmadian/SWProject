json.array!(@student_sci_degrees) do |student_sci_degree|
  json.extract! student_sci_degree, :id, :SciDegreeClass_id, :student_id, :university_id, :faculty_id, :department_id, :graduationYear, :fieldOfResearch, :gpa, :creator_id, :modifier_id
  json.url student_sci_degree_url(student_sci_degree, format: :json)
end
