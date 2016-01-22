class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def student_listing_no_report
    student_indiv_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],isDefenseCommitee: true,hasReceivedIndivdualReport: false).map(&:studentProgram).map(&:student_id).uniq
    student_collect_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],isDefenseCommitee: true,hasReceivedCollectiveReport: false).map(&:studentProgram).map(&:student_id).uniq
    student_satis_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],isDefenseCommitee: true, hasReceivedSatisfactionReport: false).map(&:studentProgram).map(&:student_id).uniq
    @students_with_no_indivdual = Student.find(student_indiv_ids)
    @students_with_no_collective = Student.find(student_collect_ids)
    @students_with_no_satisfaction = Student.find(student_satis_ids)

  end

  def student_with_supervised
    student_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],isDefenseCommitee: true).map(&:studentProgram).map(&:student_id).uniq
    @students = Student.find(student_ids)
  end

  def old_student
    @students = StudentProgram.search({programStartDate_lteq: Date.today - 4.year}).result
  end

  def index
    params[:qq] ||= {}
    if params[:qq].values.reject{|v| !v.present?} != []
      params[:qq][:programStartDate_gteq] = Date.parse("1-1-"+params[:qq][:year])
      params[:qq][:programStartDate_lteq] = params[:qq][:programStartDate_gteq].end_of_year()
      student_ids = StudentProgram.search(params[:qq]).result.pluck(:student_id)
      @search = Student.where(id: student_ids).search(params[:q])
    else
      @search = Student.search(params[:q])
    end
    @students = @search.result
    respond_with(@students)
  end

  def show
    @student_sci_degrees = StudentSciDegree.where(student_id: @student.id)
    @student_programs = StudentProgram.where(student_id: @student.id)
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:user_id, :creator_id, :modifier_id)
    end
end
