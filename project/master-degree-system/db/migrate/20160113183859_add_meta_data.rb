class AddMetaData < ActiveRecord::Migration
  def change
  	CourseClass.create!(courseClassName: 'Hardware')
	CourseClass.create!(courseClassName: 'Software')
	CourseClass.create!(courseClassName: 'Control')
	CourseClass.create!(courseClassName: 'Application')

  	Semester.create!(semesterName: "Fall")
  	Semester.create!(semesterName: "Summer")
  	Semester.create!(semesterName: "Spring")
  	
  	ProgramClass.create!(name: 'Master',duration: 4,numberOfCourses: 8)
  	ProgramClass.create!(name: 'PhD',duration: 5)
  	ProgramClass.create!(name: 'Continuing Study')
  	ProgramClass.create!(name: 'Complementary Courses Phase',duration: 1)
  	ProgramClass.create!(name: 'Special Programs',duration: 4)

  	ProfessorTitle.create!(name: 'Assistant Doctor')
  	ProfessorTitle.create!(name: 'Doctor')
  	ProfessorTitle.create!(name: 'Assistant Professor Doctor')
  	ProfessorTitle.create!(name: 'Professor Doctor')

  	UserType.create!(name: 'Professor')
  	UserType.create!(name: 'Student')
  	UserType.create!(name: 'Employee')

  	GradeClass.create!(name: 'A')
  	GradeClass.create!(name: 'A-')
  	GradeClass.create!(name: 'B+')
  	GradeClass.create!(name: 'B')
  	GradeClass.create!(name: 'B-')
  	GradeClass.create!(name: 'C')
  	GradeClass.create!(name: 'FW')
  	GradeClass.create!(name: 'I')

  	ScientificDegreeClass.create!(name: 'Bachelor of Science')
	ScientificDegreeClass.create!(name: 'Master of Science')
	ScientificDegreeClass.create!(name: 'Diploma of graduate studies')
	ScientificDegreeClass.create!(name: 'PhD')
  end
end
