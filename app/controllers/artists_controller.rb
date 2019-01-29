class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:mane, :bio))
    redirect_to artist_path(artist)
  end

  # def destroy
  #
  # end

  def index
    @artist = Artist.new
    @artists = Artist.all
    # render'artists/index.html.erb'
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
