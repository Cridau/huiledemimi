class OilsController < ApplicationController
  def index
    @oils = Oil.all
  end

  def show
    @oil = Oil.find(params[:id])
  end

  def new
    @oil = Oil.new
  end

  def create
    @oil = Oil.new(oil_params)
    if @oil.save
      redirect_to oils_path
    else
      render :new
    end
  end

  def edit
    @oil = Oil.find(params[:id])
  end

  def update
    @oil = Oil.find(params[:id])
    if @oil.update(oil_params)
      redirect_to oils_path
    else
      render :show
    end
  end

  def destroy
    @oil = Oil.find(params[:id])
    @oil.destroy
    redirect_to oils_path
  end

  private

  def oil_params
    params.require(:oil).permit(:name, :note, :photo, :article)
  end
end
