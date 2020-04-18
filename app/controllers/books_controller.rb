class BooksController < ApplicationController
  # layout :false
  layout 'admin'

  def index
    # menampilkan semua data
    @books = Book.all
  end

  def show
    # menampilkan detail data
    id = params[:id] # :id didapat dari palceholder di route
    @book = Book.find(id)
    # render plain: @book.title
    render layout: false
  end

  def new
    # menampilkan form new
    @book = Book.new
  end

  def create
    # menyimpan data dari form
    # render plain: params.inspect

    @book = Book.new(resource_params)
    if @book.save
      puts @book.errors.messages
      flash[:notice] = 'Berhasil menambahkan data'
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
    # menampilkan form edit
    @book = Book.find(params[:id])
    render layout: false
  end

  def update
    # menyimpan perubahan dari form edit
    @book = Book.find(params[:id])
    @book.update(resource_params)
    flash[:notice] = 'Berhasil update data'
    redirect_to book_path(@book)
  end

  def destroy
    # untuk menghapus data
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'Berhasil menghapus data'
    redirect_to books_path
  end

  private
  def resource_params
    params.require(:book).permit(:title, :description, :price, :page)
  end
end
