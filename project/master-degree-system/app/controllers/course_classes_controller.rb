class CourseClassesController < ApplicationController
  before_action :set_course_class, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_classes = CourseClass.all
    respond_with(@course_classes)
  end

  def show
    respond_with(@course_class)
  end

  def new
    @course_class = CourseClass.new
    respond_with(@course_class)
  end

  def edit
  end

  def create
    @course_class = CourseClass.new(course_class_params)
    @course_class.save
    respond_with(@course_class)
  end

  def update
    @course_class.update(course_class_params)
    respond_with(@course_class)
  end

  def destroy
    @course_class.destroy
    respond_with(@course_class)
  end

  private
    def set_course_class
      @course_class = CourseClass.find(params[:id])
    end

    def course_class_params
      params.require(:course_class).permit(:courseClassName, :creator_id, :modifier_id)
    end
end
