class ProgramClassSemesterCoursesController < ApplicationController
  before_action :set_program_class_semester_course, only: [:show, :edit, :update, :destroy]

  respond_to :html,:json

  def index
    if params[:semester]
      @program_class_semester_courses = ProgramClassSemesterCourse.where(semester_id: params[:semester],year: Date.today.year)
    else
      @program_class_semester_courses = ProgramClassSemesterCourse.all
    end
    respond_with(@program_class_semester_courses)
  end

  def show
    student_program = StudentProgramCourse.where(programClassSemesterCourse_id: @program_class_semester_course.id).map(&:studentProgram)
    professor_ids = StudentProgramProfessor.where(studentProgram_id: student_program.map(&:id)).map(&:professor_id)
    student_ids = student_program.map(&:student_id)
    @number_of_student = student_ids.length
    @students = User.where(id: student_ids)
    @professors = User.where(id: professor_ids)
    respond_with(@program_class_semester_course)
  end

  def new
    @program_class_semester_course = ProgramClassSemesterCourse.new
    respond_with(@program_class_semester_course)
  end

  def edit
  end

  def create
    @program_class_semester_course = ProgramClassSemesterCourse.new(program_class_semester_course_params)
    @program_class_semester_course.save
    user=Professor.where(user_id: params['professor']).index_by(&:user_id) 
    params['professor'].each do |professor_id|
      ProfessorProgramClassCourse.create(professor_id: user[professor_id.to_i].id, programClassSemesterCourse_id: @program_class_semester_course.id, creator_id: current_user.id)
    end
    
    respond_with(@program_class_semester_course)
  end

  def update
    @program_class_semester_course.update(program_class_semester_course_params)
    respond_with(@program_class_semester_course)
  end

  def destroy
    @program_class_semester_course.destroy
    respond_with(@program_class_semester_course)
  end

  private
    def set_program_class_semester_course
      @program_class_semester_course = ProgramClassSemesterCourse.find(params[:id])
    end

    def program_class_semester_course_params
      params.require(:program_class_semester_course).permit(:specificCourseName, :minimamNumberOfStudent, :course_id, :semester_id, :CourseClass_id, :ProgramClass_id, :year, :directedReading, :courseCode, :credit_hours, :total_grade, :min_number_of_student, :creator_id, :modifier_id)
    end
end
