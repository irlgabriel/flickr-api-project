class SearchController < ApplicationController

  require 'flickr'

  def new
    if params[:user_id]
      @user_id = params[:user_id]
      flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
      @photos = flickr.photos.getRecent
      byebug
    end
  end

  def create
    @user_id = params[:user_id]
    redirect_to 'search#new'
  end

end
