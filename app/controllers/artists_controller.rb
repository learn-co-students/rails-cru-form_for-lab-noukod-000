class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist_data = artist_params

    artist = Artist.create(artist_data)

    redirect_to artist_path artist
  end

  def edit
    @artist = Artist.find params[:id]
  end

  def update
    artist = Artist.find params[:id]

    artist_data = artist_params

    artist.update(artist_data)

    redirect_to artist_path artist
  end

  @private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
