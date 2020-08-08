class SearchController < ApplicationController

  require 'flickr'

  def new
    if params[:user_id]
      @user_id = params[:user_id]
      flickr = Flickr.new
      byebug
    end
  end

  def create
    @user_id = params[:user_id]
    redirect_to 'search#new'
  end

end
