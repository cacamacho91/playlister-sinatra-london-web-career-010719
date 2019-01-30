#wipe DB before seeding
Artist.destroy_all
Song.destroy_all
SongGenre.destroy_all
Genre.destroy_all

#parse files into db
LibraryParser.parse
