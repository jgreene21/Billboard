class ListsController < ApplicationController
 
  before_action :set_list, except: [:index, :new, :create]

  def index
    @lists = List.all
  end
 
  def show
    @songs = @list.songs
  end

  def new
    @list = List.new
  end

  def edit
  end
 
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end
  
  def update
    if @list.update(list_params)
      redirect_to @list
    else
      render :edit
    end
  end

  def destroy
    @list.songs.update_all(list_id: nil)
    @list.destroy
    redirect_to lists_url
  end

  def new_song
    @songs = Song.all.where(list_id: nil)
  
  end

  def add_song
    @list.songs << Song.find(params[:song_id])
    redirect_to list_path(@list)
  end

  def remove_song
    Song.find(params[:song_id]).update(list_id: nil)
    redirect_to list_path(@list)
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name)
    end
end