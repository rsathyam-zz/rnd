# An interview from Engineers Onstage series
class EosFeature < Feature
  has_attached_file :podcast,
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/paperclip.yml",
    :path => "/features/audio/:style/:id/:filename"
end
