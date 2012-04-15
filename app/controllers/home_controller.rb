#HomeController
class HomeController < ApplicationController
  def index
    @features = Feature.find(:all, :order => 'content_date DESC', :limit => 10)
  end
end

