class BooksController < ApplicationController
  def index
    # menampilkan semua data
    @books = Book.all
  end

  def show
    # menampilkan detail data
  end

  def new
    # menampilkan form new
  end

  def create
    # menyimpan data dari form
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
