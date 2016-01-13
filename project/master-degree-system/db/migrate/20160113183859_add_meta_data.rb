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

  	SciDegreeClass.create!(name: 'Bachelor of Science')
  	SciDegreeClass.create!(name: 'Master of Science')
  	SciDegreeClass.create!(name: 'Diploma of graduate studies')
  	SciDegreeClass.create!(name: 'PhD')

    University.create!(name: "Alexandria University")
    Faculty.create!(name: "Faculty of Engineering")
    Department.create!(name: "Computer and system department")
  end
end
