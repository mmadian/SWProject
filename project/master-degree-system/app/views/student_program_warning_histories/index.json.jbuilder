json.array!(@student_program_warning_histories) do |student_program_warning_history|
  json.extract! student_program_warning_history, :id, :studentProgram_id, :warning, :date, :creator_id, :modifier_id
  json.url student_program_warning_history_url(student_program_warning_history, format: :json)
end
