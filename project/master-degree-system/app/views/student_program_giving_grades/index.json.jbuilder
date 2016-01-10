json.array!(@student_program_giving_grades) do |student_program_giving_grade|
  json.extract! student_program_giving_grade, :id, :studentProgram_id, :seminarDate, :hasThesisTitle, :finalReportOnGoodnessOfThesis, :refereeMakingSuggestion, :refreeComitteeMade, :thesisTitleArabic, :thiesisTitleEnglish, :thesisGeneralField, :thesisSpecificField, :thesisAbstract, :creator_id, :modifier_id
  json.url student_program_giving_grade_url(student_program_giving_grade, format: :json)
end
