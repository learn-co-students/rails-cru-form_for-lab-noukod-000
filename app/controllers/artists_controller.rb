
class ArtistsController < ApplicationController
  def index
    @artist=Artist.all
  end

  def new
    @artist=Artist.new
  end

  def show
    @artist=Artist.find(params[:id])
  end

  def edit
    @artist=Artist.find(params[:id])
  end

  def create
    @artist=Artist.create(artists_params(:name,:bio))
    redirect_to artist_path(@artist)
  end

  def update
    @artist=Artist.find(params[:id])
    @artist.update(artists_params(:name,:bio))
    redirect_to artist_path(@artist)
  end

  def artist_params
  			params.require(:artist).permit(:name, :bio)
  		end
end
