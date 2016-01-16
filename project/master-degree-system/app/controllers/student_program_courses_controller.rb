class StudentProgramCoursesController < ApplicationController
  before_action :set_student_program_course, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_program_courses = StudentProgramCourse.all
    respond_with(@student_program_courses)
  end

  def show
    respond_with(@student_program_course)
  end

  def new
    @student_program_course = StudentProgramCourse.new
    respond_with(@student_program_course)
  end

  def edit
  end

  def create
    @student_program_course = StudentProgramCourse.new(student_program_course_params)
    @student_program_course.save
    respond_with(StudentProgram.find(params["student_program_id"]))
  end

  def update
    @student_program_course.update(student_program_course_params)
    respond_with(StudentProgram.find(params["student_program_id"]))
  end

  def destroy
    @student_program_course.destroy
    respond_with(StudentProgram.find(params["student_program_id"]))
  end

  private
    def set_student_program_course
      @student_program_course = StudentProgramCourse.find(params[:id])
    end

    def student_program_course_params
      params.require(:student_program_course).permit(:programClassSemesterCourse_id, :studentProgram_id, :gradeClass_id, :subscriptionDate, :gradeValue, :isComplementaryCourse, :creator_id, :modifier_id)
    end
end
