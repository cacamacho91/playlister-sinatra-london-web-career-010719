require_relative 'slugifiable'

class Artist < ActiveRecord::Base
  include Slug
  has_many :songs
  has_many :genres, through: :songs


  def self.find_by_slug(slug)
    Artist.all.find  { |model| model.slug == slug }
  end
end
