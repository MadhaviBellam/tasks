class ChargersController < ApplicationController
  before_action :set_charger,only: [:show, :edit, :update, :destroy]
  def show
  end
  def new
    @charger = Charger.new
  end
  def index
    @chargers = Charger.all
  end
  def edit
  end
  def create
    @charger = Charger.new(charger_params)
    if @charger.save
      flash[:notice] = "Charger was created successfully."
      redirect_to @charger
    else
      render 'new'
    end
  end
  def update
    if @charger.update(charger_params)
      flash[:notice] = "Charger was updated successfully"
      redirect_to @charger
    else
      render 'edit'
    end
  end
  def destroy
    @charger.destroy
    redirect_to chargers_path
  end
  private
  def set_charger
    @charger = Charger.find(params[:id])
  end
  def charger_params
    params.require(:charger).permit(:name, :cost)
  end
end
