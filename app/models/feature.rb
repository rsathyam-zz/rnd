# Represents a piece of content on rnd.io
class Feature < ActiveRecord::Base
  before_create :create_slug
  
  def create_slug
    self.slug = self.title.parameterize
  end

  def leader_picture_url
    ENV['STATICS_PATH'] + self.leader_picture
  end
end
