class StudentProgramProfessorsController < ApplicationController
  before_action :set_student_program_professor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_program_professors = StudentProgramProfessor.all
    respond_with(@student_program_professors)
  end

  def show
    respond_with(@student_program_professor)
  end

  def new
    @student_program_professor = StudentProgramProfessor.new
    respond_with(@student_program_professor)
  end

  def edit
  end

  def create
    @student_program_professor = StudentProgramProfessor.new(student_program_professor_params)
    @student_program_professor.save
    respond_with(@student_program_professor)
  end

  def update
    @student_program_professor.update(student_program_professor_params)
    respond_with(@student_program_professor)
  end

  def destroy
    @student_program_professor.destroy
    respond_with(@student_program_professor)
  end

  private
    def set_student_program_professor
      @student_program_professor = StudentProgramProfessor.find(params[:id])
    end

    def student_program_professor_params
      params.require(:student_program_professor).permit(:studentProgram_id, :professor_id, :isPrimary, :isDefenseCommitee, :comment, :additionDate, :isAccepted, :acceptanceDate, :isExternal, :hasReceivedIndivdualReport, :hasReceivedCollectiveReport, :hasReceivedSatisfactionReport, :isCommitteeHead, :creator_id, :modifier_id)
    end
end
