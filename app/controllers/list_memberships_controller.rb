require 'hominid'


#ListMembershipsController
class ListMembershipsController < ApplicationController
  def create
    hominid=Hominid::API.new(ENV['MC_API_KEY'])
    hominid.listSubscribe('033ea89e57', params[:email], [], 'html', true, true, true, true)
  end
end
