class ArtistsController < ApplicationController
  def index
    @Artists = Artist.all
  end
  
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.create(artist_params(:name, :bio))
    # redirect to the show
    redirect_to artist_path(@artist)
  end
  
  def show
    set_artist
  end
  

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(artist_params(:name,:bio))
    redirect_to artist_path(@artist)
  end
  
  
  private
  def set_artist
    @artist = Artist.find_by_id(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
  
end
