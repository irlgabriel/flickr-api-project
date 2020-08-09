class SearchController < ApplicationController

  require 'flickr'

  def new
    if params[:user_id]
      @user_id = params[:user_id]
      flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
      @profile = flickr.profile.getProfile(:user_id => @user_id)
      
      if flash[:notice]
        flash[:notice] = "Found user successfully!"
      else
        flash[:notice] = "Could not find user!"
      end

      @photos = flickr.people.getPhotos(:user_id => @user_id)
    end
  end

  def create
    @user_id = params[:user_id]
    redirect_to 'search#new'
  end

end
