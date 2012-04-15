class EngineersOnstageController < ApplicationController
  def index
    @features = EosFeature.all
  end

  def itunes_index
    @features = EosFeature.find(:all, :order => 'content_date DESC', :limit => 10)
    
    respond_to do |format|
      format.xml
    end
  end
end
