class RegistrationsController < ApplicationController
  
  before_action :get_select_box

  def new
  	@registration = Registration.new
  end

  def create
  	@registration = Registration.new(registration_params)
  	if @registration.save
  	  redirect_to new_registration_path, notice: 'Matrícula criada com sucesso.'
    else
      render :new
    end
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to :back, notice: 'Matrícula removida com sucesso.'
  end

  private
    def registration_params
      params.require(:registration).permit(:student_id, :course_id)
    end

    def get_select_box
      @students = Student.all
      @courses  = Course.all
    end
end
