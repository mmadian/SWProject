class GradeClassesController < ApplicationController
  before_action :set_grade_class, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @grade_classes = GradeClass.all
    respond_with(@grade_classes)
  end

  def show
    respond_with(@grade_class)
  end

  def new
    @grade_class = GradeClass.new
    respond_with(@grade_class)
  end

  def edit
  end

  def create
    @grade_class = GradeClass.new(grade_class_params)
    @grade_class.save
    respond_with(@grade_class)
  end

  def update
    @grade_class.update(grade_class_params)
    respond_with(@grade_class)
  end

  def destroy
    @grade_class.destroy
    respond_with(@grade_class)
  end

  private
    def set_grade_class
      @grade_class = GradeClass.find(params[:id])
    end

    def grade_class_params
      params.require(:grade_class).permit(:name, :creator_id, :modifier_id)
    end
end
