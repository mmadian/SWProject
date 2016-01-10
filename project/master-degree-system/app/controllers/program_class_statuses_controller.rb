class ProgramClassStatusesController < ApplicationController
  before_action :set_program_class_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @program_class_statuses = ProgramClassStatus.all
    respond_with(@program_class_statuses)
  end

  def show
    respond_with(@program_class_status)
  end

  def new
    @program_class_status = ProgramClassStatus.new
    respond_with(@program_class_status)
  end

  def edit
  end

  def create
    @program_class_status = ProgramClassStatus.new(program_class_status_params)
    @program_class_status.save
    respond_with(@program_class_status)
  end

  def update
    @program_class_status.update(program_class_status_params)
    respond_with(@program_class_status)
  end

  def destroy
    @program_class_status.destroy
    respond_with(@program_class_status)
  end

  private
    def set_program_class_status
      @program_class_status = ProgramClassStatus.find(params[:id])
    end

    def program_class_status_params
      params.require(:program_class_status).permit(:programClass_id, :preProgramClass_id, :status, :creator_id, :modifier_id)
    end
end
