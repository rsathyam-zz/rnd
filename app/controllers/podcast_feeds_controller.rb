# feeds for the podcasts

class PodcastFeedsController < ApplicationController
  def engineers_onstage
    @features = EosFeature.find(:all, :order => 'content_date DESC', :limit => 10)
    
    respond_to do |format|
      format.xml
    end
  end
end

