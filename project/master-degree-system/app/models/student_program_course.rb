class StudentProgramCourse < ActiveRecord::Base
  belongs_to :programClassSemesterCourse
  belongs_to :studentProgram
  belongs_to :gradeClass
  belongs_to :creator
  belongs_to :modifier

  validate :different_course_code

  def different_course_code
  	if self.studentProgram.try(:studentProgramCourses).map {|item| item.try(:programClassSemesterCourse) }.map{|item| item.try(:courseCode)}.include? (self.programClassSemesterCourse.try(:courseCode))
	  self.errors.add(:programClassSemesterCourse_id, "You have been take this code before")
	end
  end
end
