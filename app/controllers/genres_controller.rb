class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name))
   @genre.save
   redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genere.find(params[:id])
  end

  def update
    @genre = Genere.find(params[:id])
    @genre.update(genre_params[:name])
    redirect_to genre_path(@genre)

  end

  # def destroy
  # end

  def index
    @genre= Genre.new
    @genres = Genere.all
  end

  def show
    @genre = Genere.find(params[:id])
  end

  private
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
