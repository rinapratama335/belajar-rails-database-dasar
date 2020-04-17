class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    id = params[:id]
    @author = Author.find(id)
  end

  def new
    @author = Author.new
  end

  def create
    # render plain: params.inspect
    author = Author.new(resource_params)
    author.save
    flash[:notice] = 'Berhasil Menambah Data'
    redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(resource_params)
    flash[:notice] = 'Berhasil Mengubah Data'
    redirect_to author_path(@author)
  end

  def destroy
    id = params[:id]
    @author = Author.find(id)
    @author.destroy
    flash[:notice] = 'Berhasil Menghapus Data'
    redirect_to authors_path
  end

  private
  def resource_params
    params.require(:author).permit(:name, :address, :old)
  end
end
