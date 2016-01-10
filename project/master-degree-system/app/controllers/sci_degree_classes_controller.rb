class SciDegreeClassesController < ApplicationController
  before_action :set_sci_degree_class, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sci_degree_classes = SciDegreeClass.all
    respond_with(@sci_degree_classes)
  end

  def show
    respond_with(@sci_degree_class)
  end

  def new
    @sci_degree_class = SciDegreeClass.new
    respond_with(@sci_degree_class)
  end

  def edit
  end

  def create
    @sci_degree_class = SciDegreeClass.new(sci_degree_class_params)
    @sci_degree_class.save
    respond_with(@sci_degree_class)
  end

  def update
    @sci_degree_class.update(sci_degree_class_params)
    respond_with(@sci_degree_class)
  end

  def destroy
    @sci_degree_class.destroy
    respond_with(@sci_degree_class)
  end

  private
    def set_sci_degree_class
      @sci_degree_class = SciDegreeClass.find(params[:id])
    end

    def sci_degree_class_params
      params.require(:sci_degree_class).permit(:name, :creator_id, :modifier_id)
    end
end
