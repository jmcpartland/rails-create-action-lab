class StudentsController < ApplicationController
    # before_action :set_student, only: [:show, :create]


  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(
      {
        first_name: params[:first_name],
        last_name: params[:last_name]
      }
    )
    redirect_to student_path(@student)
  end


  # private

  # def student_params
  #   params.require.permit(:first_name, :last_name)
  # end

  # def set_student
  #   @student = Student.find(params[:id])
  # end

end
