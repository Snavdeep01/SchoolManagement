class FacultiesController < ApplicationController
  def index
    @teachers=Teacher.all
  end

  def show
  end

  def new
  end

  def distroy
  end
end
