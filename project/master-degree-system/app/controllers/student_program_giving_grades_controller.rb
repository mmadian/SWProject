class StudentProgramGivingGradesController < ApplicationController
  before_action :set_student_program_giving_grade, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_program_giving_grades = StudentProgramGivingGrade.all
    respond_with(@student_program_giving_grades)
  end

  def show
    respond_with(@student_program_giving_grade)
  end

  def new
    @student_program_giving_grade = StudentProgramGivingGrade.new
    respond_with(@student_program_giving_grade)
  end

  def edit
  end

  def create
    @student_program_giving_grade = StudentProgramGivingGrade.new(student_program_giving_grade_params)
    @student_program_giving_grade.save
    respond_with(@student_program_giving_grade)
  end

  def update
    @student_program_giving_grade.update(student_program_giving_grade_params)
    respond_with(@student_program_giving_grade)
  end

  def destroy
    @student_program_giving_grade.destroy
    respond_with(@student_program_giving_grade)
  end

  private
    def set_student_program_giving_grade
      @student_program_giving_grade = StudentProgramGivingGrade.find(params[:id])
    end

    def student_program_giving_grade_params
      params.require(:student_program_giving_grade).permit(:studentProgram_id, :seminarDate, :hasThesisTitle, :finalReportOnGoodnessOfThesis, :refereeMakingSuggestion, :refreeComitteeMade, :thesisTitleArabic, :thiesisTitleEnglish, :thesisGeneralField, :thesisSpecificField, :thesisAbstract, :creator_id, :modifier_id)
    end
end
