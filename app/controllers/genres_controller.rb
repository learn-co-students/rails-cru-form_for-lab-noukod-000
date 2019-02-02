class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    genre_data = genre_params

    genre = Genre.create(genre_data)

    redirect_to genre_path genre
  end

  def edit
    @genre = Genre.find params[:id]
  end

  def update
    genre = Genre.find params[:id]

    genre_data = genre_params

    genre.update(genre_data)

    redirect_to genre_path genre
  end

  @private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
