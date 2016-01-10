class ProfessorProgramClassCoursesController < ApplicationController
  before_action :set_professor_program_class_course, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @professor_program_class_courses = ProfessorProgramClassCourse.all
    respond_with(@professor_program_class_courses)
  end

  def show
    respond_with(@professor_program_class_course)
  end

  def new
    @professor_program_class_course = ProfessorProgramClassCourse.new
    respond_with(@professor_program_class_course)
  end

  def edit
  end

  def create
    @professor_program_class_course = ProfessorProgramClassCourse.new(professor_program_class_course_params)
    @professor_program_class_course.save
    respond_with(@professor_program_class_course)
  end

  def update
    @professor_program_class_course.update(professor_program_class_course_params)
    respond_with(@professor_program_class_course)
  end

  def destroy
    @professor_program_class_course.destroy
    respond_with(@professor_program_class_course)
  end

  private
    def set_professor_program_class_course
      @professor_program_class_course = ProfessorProgramClassCourse.find(params[:id])
    end

    def professor_program_class_course_params
      params.require(:professor_program_class_course).permit(:professor_id, :programClassSemesterCourse, :creator_id, :modifier_id)
    end
end
