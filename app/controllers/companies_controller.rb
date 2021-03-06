class CompaniesController < ApplicationController
  before_action :set_company,only: [:show, :edit, :update, :destroy]
  def show
  end
  def new
    @company = Company.new
  end
  def index
    @companies = Company.all
  end
  def edit
  end
  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = "Company was created successfully."
      redirect_to @company
    else
      render 'new'
    end
  end
  def update
    if @company.update(company_params)
      flash[:notice] = "Company was updated successfully"
      redirect_to @company
    else
      render 'edit'
    end
  end
  def destroy
    @company.destroy
    redirect_to companies_path
  end
  private
  def set_company
    @company = Company.find(params[:id])
  end
  def company_params
    params.require(:company).permit(:name, :place)
  end
end
