class MagzinesController < ApplicationController
  before_action :set_magzine,only: [:show, :edit, :update, :destroy]
  def show
  end
  def index
    @magzines = Magzine.all
  end
  def new
    @magzine = Magzine.new
  end
  def edit
  end
  def create
    @magzine = Magzine.new(magzine_params)
    if @magzine.save
      flash[:notice] = "Magzine was created successfully"
      redirect_to @magzine
    else
      render 'new'
    end
  end
  def update
    if @magzine.update(magzine_params)
      flash[:notice] = "Magzine was updated successfully"
      redirect_to @magzine
    else
      render 'edit'
    end
  end
  def destroy
    @magzine.destroy
    redirect_to magzines_path
  end
  private
  def set_magzine
    @magzine = Magzine.find(params[:id])
  end
  def magzine_params
    params.require(:magzine).permit(:title, :description)
  end

end
