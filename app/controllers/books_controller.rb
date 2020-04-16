class BooksController < ApplicationController
  def index
    # menampilkan semua data
    @books = Book.all
  end

  def show
    # menampilkan detail data
    id = params[:id] # :id didapat dari palceholder di route
    @book = Book.find(id)
    # render plain: @book.title
  end

  def new
    # menampilkan form new
    @book = Book.new
  end

  def create
    # menyimpan data dari form
    # render plain: params.inspect

    book = Book.new(resource_params)
    book.save
    puts book.errors.messages
    redirect_to books_path
  end

  def edit
    # menampilkan form edit
    @book = Book.find(params[:id])
  end

  def update
    # menyimpan perubahan dari form edit
    @book = Book.find(params[:id])
    @book.update(resource_params)
    redirect_to book_path(@book)
  end

  def destroy
    # untuk menghapus data
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def resource_params
    params.require(:book).permit(:title, :description, :price, :page)
  end
end
