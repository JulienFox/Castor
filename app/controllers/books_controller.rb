class BooksController < ApplicationController
  def index
    #@books = Book.all
    @books = Book.page(params[:page])
    @categories = Category.all
    #ra@books = Book.page(1)

  end

  def show
    @books = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      redirect_to "/books/#{params[:id]}"
    else
      render 'show'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
  # app/controllers/books_controller.rb
  def create
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end



end


