class EngineersOnstageController < ApplicationController
  def index
    @features = EosFeature.all

  end

end
