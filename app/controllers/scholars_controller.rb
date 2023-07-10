class ScholarsController < ApplicationController
  def index
    @student=Student.all
  end

  def show
  end

  def new
  end

  def distroy
    @student = Student.find(params[:id])
    @student.destroy
  end
end
