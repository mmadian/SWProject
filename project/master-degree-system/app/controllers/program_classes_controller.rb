class ProgramClassesController < ApplicationController
  before_action :set_program_class, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @program_classes = ProgramClass.all
    respond_with(@program_classes)
  end

  def show
    respond_with(@program_class)
  end

  def new
    @program_class = ProgramClass.new
    respond_with(@program_class)
  end

  def edit
  end

  def create
    @program_class = ProgramClass.new(program_class_params)
    @program_class.save
    respond_with(@program_class)
  end

  def update
    @program_class.update(program_class_params)
    respond_with(@program_class)
  end

  def destroy
    @program_class.destroy
    respond_with(@program_class)
  end

  private
    def set_program_class
      @program_class = ProgramClass.find(params[:id])
    end

    def program_class_params
      params.require(:program_class).permit(:name, :duration, :extensionPeriod, :numberOfCourses, :creator_id, :modifier_id)
    end
end
