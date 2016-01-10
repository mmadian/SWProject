class StudentSciDegreesController < ApplicationController
  before_action :set_student_sci_degree, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_sci_degrees = StudentSciDegree.all
    respond_with(@student_sci_degrees)
  end

  def show
    respond_with(@student_sci_degree)
  end

  def new
    @student_sci_degree = StudentSciDegree.new
    respond_with(@student_sci_degree)
  end

  def edit
  end

  def create
    @student_sci_degree = StudentSciDegree.new(student_sci_degree_params)
    @student_sci_degree.save
    respond_with(@student_sci_degree)
  end

  def update
    @student_sci_degree.update(student_sci_degree_params)
    respond_with(@student_sci_degree)
  end

  def destroy
    @student_sci_degree.destroy
    respond_with(@student_sci_degree)
  end

  private
    def set_student_sci_degree
      @student_sci_degree = StudentSciDegree.find(params[:id])
    end

    def student_sci_degree_params
      params.require(:student_sci_degree).permit(:SciDegreeClass_id, :student_id, :university_id, :faculty_id, :department_id, :graduationYear, :fieldOfResearch, :gpa, :creator_id, :modifier_id)
    end
end
