class ProfessorTitlesController < ApplicationController
  before_action :set_professor_title, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @professor_titles = ProfessorTitle.all
    respond_with(@professor_titles)
  end

  def show
    respond_with(@professor_title)
  end

  def new
    @professor_title = ProfessorTitle.new
    respond_with(@professor_title)
  end

  def edit
  end

  def create
    @professor_title = ProfessorTitle.new(professor_title_params)
    @professor_title.save
    respond_with(@professor_title)
  end

  def update
    @professor_title.update(professor_title_params)
    respond_with(@professor_title)
  end

  def destroy
    @professor_title.destroy
    respond_with(@professor_title)
  end

  private
    def set_professor_title
      @professor_title = ProfessorTitle.find(params[:id])
    end

    def professor_title_params
      params.require(:professor_title).permit(:name, :date, :creator_id, :modifier_id)
    end
end
