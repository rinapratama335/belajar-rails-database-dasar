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

    title = params[:book][:title]
    description = params[:book][:description]
    price = params[:book][:price]
    page = params[:book][:page]

    book = Book.new(title: title, description: description, price: price, page: page)
    book.save
    puts book.errors.messages
    redirect_to books_path
  end

  def edit
    # menampilkan form edit
  end

  def update
    # menyimpan perubahan dari form edit
  end

  def destroy
    # untuk menghapus data
  end
end
