class StudentProgramStatusHistoriesController < ApplicationController
  before_action :set_student_program_status_history, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_program_status_histories = StudentProgramStatusHistory.all
    respond_with(@student_program_status_histories)
  end

  def show
    respond_with(@student_program_status_history)
  end

  def new
    @student_program_status_history = StudentProgramStatusHistory.new
    respond_with(@student_program_status_history)
  end

  def edit
  end

  def create
    @student_program_status_history = StudentProgramStatusHistory.new(student_program_status_history_params)
    @student_program_status_history.save
    respond_with(@student_program_status_history)
  end

  def update
    @student_program_status_history.update(student_program_status_history_params)
    respond_with(@student_program_status_history)
  end

  def destroy
    @student_program_status_history.destroy
    respond_with(@student_program_status_history)
  end

  private
    def set_student_program_status_history
      @student_program_status_history = StudentProgramStatusHistory.find(params[:id])
    end

    def student_program_status_history_params
      params.require(:student_program_status_history).permit(:studentProgram_id, :programClassStatus_id, :date, :comments, :creator_id, :modifier_id)
    end
end
