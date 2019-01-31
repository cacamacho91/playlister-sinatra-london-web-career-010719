class GenresController < ApplicationController

  #allow user to *READ* all genres
  get "/genres" do
    @genres = Genre.all
    erb :"genres/index"
  end

  #allow user to *READ* an indvidual genre
  get "/genres/:slug" do
    @genre = Genre.find_by_slug(params["slug"])
    @artists = @genre.artists
    @songs = @genre.songs
    erb :"genres/show"
  end

end
