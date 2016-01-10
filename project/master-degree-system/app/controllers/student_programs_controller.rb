class StudentProgramsController < ApplicationController
  before_action :set_student_program, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_programs = StudentProgram.all
    respond_with(@student_programs)
  end

  def show
    respond_with(@student_program)
  end

  def new
    @student_program = StudentProgram.new
    respond_with(@student_program)
  end

  def edit
  end

  def create
    @student_program = StudentProgram.new(student_program_params)
    @student_program.save
    respond_with(@student_program)
  end

  def update
    @student_program.update(student_program_params)
    respond_with(@student_program)
  end

  def destroy
    @student_program.destroy
    respond_with(@student_program)
  end

  private
    def set_student_program
      @student_program = StudentProgram.find(params[:id])
    end

    def student_program_params
      params.require(:student_program).permit(:student_id, :ProgramClass_id, :finishedToefl, :toeflDate, :hasResearchPoint, :puplishedAPaper, :programStartDate, :isVTMENAprogram, :creator_id, :modifier_id)
    end
end
