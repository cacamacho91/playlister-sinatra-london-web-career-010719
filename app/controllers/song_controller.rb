class SongsController < ApplicationController

  #allow user to *READ* all songs
  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  #shows the form to *CREATE* a new song
  get "/songs/new" do
    @artists = Artist.all
    @genres = Genre.all
    erb :"songs/new"
  end

  #process the form to *CREATE* a new song
  post "/songs" do
    binding.pry
    #Song.create(params["song"])
  end

  #allow user to *READ* an indvidual song
  get "/songs/:slug" do
    @song = Song.find_by_slug(params["slug"])
    @artist = @song.artist
    @genres = @song.genres
    erb :"songs/show"
  end


end
