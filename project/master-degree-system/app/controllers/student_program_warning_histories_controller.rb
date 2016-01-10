class StudentProgramWarningHistoriesController < ApplicationController
  before_action :set_student_program_warning_history, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_program_warning_histories = StudentProgramWarningHistory.all
    respond_with(@student_program_warning_histories)
  end

  def show
    respond_with(@student_program_warning_history)
  end

  def new
    @student_program_warning_history = StudentProgramWarningHistory.new
    respond_with(@student_program_warning_history)
  end

  def edit
  end

  def create
    @student_program_warning_history = StudentProgramWarningHistory.new(student_program_warning_history_params)
    @student_program_warning_history.save
    respond_with(@student_program_warning_history)
  end

  def update
    @student_program_warning_history.update(student_program_warning_history_params)
    respond_with(@student_program_warning_history)
  end

  def destroy
    @student_program_warning_history.destroy
    respond_with(@student_program_warning_history)
  end

  private
    def set_student_program_warning_history
      @student_program_warning_history = StudentProgramWarningHistory.find(params[:id])
    end

    def student_program_warning_history_params
      params.require(:student_program_warning_history).permit(:studentProgram_id, :warning, :date, :creator_id, :modifier_id)
    end
end
