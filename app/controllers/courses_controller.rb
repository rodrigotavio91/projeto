class CoursesController < ApplicationController
  
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end
  
  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course, notice: 'Curso cadastrado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Curso atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to course_url, notice: 'Curso excluído com sucesso.'
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description)
    end
end
