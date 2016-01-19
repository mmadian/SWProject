class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def student_listing_no_report
    student_indiv_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],hasReceivedIndivdualReport: false).map(&:studentProgram).map(&:student_id).uniq
    student_collect_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],hasReceivedCollectiveReport: false).map(&:studentProgram).map(&:student_id).uniq
    student_satis_ids = StudentProgramProfessor.where(professor_id: params[:professor_id], hasReceivedSatisfactionReport: false).map(&:studentProgram).map(&:student_id).uniq
    @students_with_no_indivdual = User.find(student_indiv_ids)
    @students_with_no_collective = User.find(student_collect_ids)
    @students_with_no_satisfaction = User.find(student_satis_ids)

  end

  def student_with_supervised
    student_ids = StudentProgramProfessor.where(professor_id: params[:professor_id],isPrimary: true).map(&:studentProgram).map(&:student_id).uniq
    @students = User.find(student_ids)
  end

  def old_student
    @students = StudentProgram.search({programStartDate_lteq: Date.today - 4.year}).result
  end

  def index
    params[:qq] ||= {}
    if params[:qq].values.reject{|v| !v.present?} != []
      program_class_sem_cour_ids = ProgramClassSemesterCourse.search(params[:qq]).result.pluck(:id)
      student_prog_cour_ids = StudentProgramCourse.where(programClassSemesterCourse_id: program_class_sem_cour_ids).pluck(:studentProgram_id)
      student_ids = StudentProgram.where(id: student_prog_cour_ids).pluck(:student_id)
    end

    @search = User.where(id: student_ids || Student.all.pluck(:user_id)).search(params[:q])
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
      @student = User.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:user_id, :creator_id, :modifier_id)
    end
end
