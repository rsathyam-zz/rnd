# Represents a piece of content on rnd.io
class Feature < ActiveRecord::Base
  before_save :create_slug

  has_attached_file :leader_picture,
    :styles => { :full => "660x440>" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/paperclip.yml",
    :path => "/features/images/:style/:id/:filename"
  
  def create_slug
    self.slug = "#{self.content_date.strftime('%Y%m%d')} #{self.title}".parameterize
  end
end

