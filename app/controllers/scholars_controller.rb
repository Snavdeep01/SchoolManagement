class ScholarsController < ApplicationController
  def index
    @student=Student.all
  end

  def show
  end

  def new
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to root_path
  end

  private
    def student_params
      params.require(:student).permit(:email, :full_name, :parent_name, :contact_number)
    end

end
