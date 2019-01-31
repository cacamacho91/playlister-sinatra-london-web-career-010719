class ArtistsController < ApplicationController

  #allow user to *READ* all artists
  get "/artists" do
    @artists = Artist.all
    erb :"artists/index"
  end

  #allow user to *READ* an indvidual artist
  get "/artists/:slug" do
    @artist = Artist.find_by_slug(params["slug"])
    @songs = @artist.songs
    @genres = @artist.genres
    erb :"artists/show"
  end

end
