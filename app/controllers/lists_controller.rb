class ListsController < ApplicationController
 
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @songs = @list.songs 
  end

  def new_song
    @list = List.find(params[:id])
    @songs = Song.all.where(list_id: nil)
  end

  def add_song
    @list = List.find(params[:id])
    @list.songs << song.find(params[:song_id])
    redirect_to list_path(@list)
  end
    
    
  def remove_song
    @list = list.find(params[:id])
    Song.find(params[:song_id]).update(list_id: nil)
    redirect_to list_path(@list)
  end
    
    
  end
    