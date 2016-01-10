class StudentSciDegreeGradesController < ApplicationController
  before_action :set_student_sci_degree_grade, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_sci_degree_grades = StudentSciDegreeGrade.all
    respond_with(@student_sci_degree_grades)
  end

  def show
    respond_with(@student_sci_degree_grade)
  end

  def new
    @student_sci_degree_grade = StudentSciDegreeGrade.new
    respond_with(@student_sci_degree_grade)
  end

  def edit
  end

  def create
    @student_sci_degree_grade = StudentSciDegreeGrade.new(student_sci_degree_grade_params)
    @student_sci_degree_grade.save
    respond_with(@student_sci_degree_grade)
  end

  def update
    @student_sci_degree_grade.update(student_sci_degree_grade_params)
    respond_with(@student_sci_degree_grade)
  end

  def destroy
    @student_sci_degree_grade.destroy
    respond_with(@student_sci_degree_grade)
  end

  private
    def set_student_sci_degree_grade
      @student_sci_degree_grade = StudentSciDegreeGrade.find(params[:id])
    end

    def student_sci_degree_grade_params
      params.require(:student_sci_degree_grade).permit(:studentSciDegree_id, :year, :grade, :creator_id, :modifier_id)
    end
end
