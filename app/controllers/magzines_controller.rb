class MagzinesController < ApplicationController
  def show
    @magzine = Magzine.find(params[:id])
  end
  def index
    @magzines = Magzine.all
  end
  def new
    @magzine = Magzine.new
  end
  def edit
    @magzine = Magzine.find(params[:id])
  end
  def create
    @magzine = Magzine.new(params.require(:magzine).permit(:title, :description))
    if @magzine.save
      flash[:notice] = "Magzine was created successfully"
      redirect_to @magzine
    else
      render 'new'
    end
  end
  def update
    @magzine =Magzine.find(params[:id])
    if @magzine.update(params.require(:magzine).permit(:title, :description))
      flash[:notice] = "Magzine was updated successfully"
      redirect_to @magzine
    else
      render 'edit'
    end
  end
  def destroy
    @magzine = Magzine.find(params[:id])
    @magzine.destroy
    redirect_to magzines_path
  end

end
