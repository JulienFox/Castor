class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page])
    @categories = Category.all
    @book = Book.new
  end

  def create_old
    if params[:category_id]
      Book.create title: params[:title], category_id: params[:category_id]
    else
      Book.create title: params[:title], category_id: 4
    end
    redirect_to "/books"
  end

  # app/controllers/books_controller.rb
  def create
    if params[:category_id]
      @book = Book.new title: params[:title], category_id: params[:category_id]
    else
      @book = Book.new title: params[:title], category_id: 4
    end

    if @book.save
      flash[:success] = "Le livre a bien été créé."
      redirect_to "/books"
    else
      flash[:fail] = "Le livre n'a pas été créé."
      @books = Book.all
      render "index"
    end
  end










  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      flash[:success] = "Le livre a été mis à jour."
      redirect_to "/books/#{params[:id]}"
    else
      flash[:fail] = "Le livre n'a point été mis à jour."
      render 'show'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
