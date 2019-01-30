class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :geners, through: :song_genres
end
