class BooksController < ApplicationController
  before_action :set_book,only: [:show, :edit, :update, :destroy]
  def show
  end
  def new
    @book = Book.new
  end
  def index
    @books = Book.all
  end
  def edit
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was created successfully"
      redirect_to @book
    else
      render 'new'
    end
  end
  def update
    if @book.update(book_params)
      flash[:notice] = "Book was updated successfully"
      redirect_to @book
    else
      render 'edit'
    end
  end
  def destroy
    @book.destroy
    redirect_to books_path
  end
  private
  def set_book
    @book = Book.find(params[:id])
  end
  def book_params
    params.require(:book).permit(:name, :pages, :cost)
  end
end
