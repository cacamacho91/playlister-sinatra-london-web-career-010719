module Slug
  def slug
    self.name.gsub(" ", "-")
  end
end
