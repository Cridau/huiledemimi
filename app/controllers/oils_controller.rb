class OilsController < ApplicationController
  def index
    @oils = Oil.all
  end

  def show
    @oil = Oil.find(params[:id])
  end
end
