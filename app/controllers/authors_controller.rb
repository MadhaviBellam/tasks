# frozen_string_literal: true

# app/models/author.rb
class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show edit update destroy]
  def show; end

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def edit; end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = 'Author was created successfully'
      redirect_to @author
    else
      render 'new'
    end
  end

  def update
    if @author.update(author_params)
      flash[:notice] = 'Author was updated successfully'
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:firstname, :lastname, :age)
  end
end
