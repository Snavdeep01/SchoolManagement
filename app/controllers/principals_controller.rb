class PrincipalsController < ApplicationController
  def index
    @admins=Admin.all
  end

  def show
  end

  def new
  end

  def distroy
  end
end
