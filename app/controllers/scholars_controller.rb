class ScholarsController < ApplicationController
  def index
    @students=Student.all
  end

  def show
  end

  def new
  end

  def distroy
  end
end
