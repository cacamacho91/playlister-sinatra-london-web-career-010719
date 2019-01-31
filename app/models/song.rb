require_relative 'slugifiable'

class Song < ActiveRecord::Base
  include Slug
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def self.find_by_slug(slug)
    Song.all.find  { |model| model.slug == slug }
  end
end
