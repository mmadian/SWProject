class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @students = User.where(id: Student.all.pluck(:user_id))
    respond_with(@students)
  end

  def show
    @student_sci_degrees = StudentSciDegree.all
    @student_programs = StudentProgram.all
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = User.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:user_id, :creator_id, :modifier_id)
    end
end
