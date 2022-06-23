class PublishersController < ApplicationController
  before_action :Authenticate_publisher
  before_action :set_publisher,only: [:show, :edit, :update, :destroy]
  def show
    #@publisher = Publisher.find(params[:id])
  end
  def index
    @publishers = Publisher.all
  end
  def new
    @publisher = Publisher.new
  end
  def edit
    #@publisher = Publisher.find(params[:id])
  end
  def create
    #render plain: params[:publisher]
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "Publisher was created succesfully."
      redirect_to @publisher
    else
      render 'new'
    end
  end
  def update
    #@publisher = Publisher.find(params[:id])
    if @publisher.update(publisher_params)
      flash[:notice] = "Publisher was updated successfully"
      redirect_to @publisher
    else
      render 'edit'
    end
  end
  def destroy
    #@publisher = Publisher.find(params[:id])
    @publisher.destroy
    redirect_to publishers_path
  end
  private
  def set_publisher
    @publisher = Publisher.find(params[:id])
  end
  def publisher_params
    params.require(:publisher).permit(:firstname, :lastname)
  end
end
