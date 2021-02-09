class StaticPagesController < ApplicationController
  def user_photos
    if params[:user_id]
      @user_id = params[:user_id]
      #@user_id = @user_id.to_s
      photos   = FlickrAPI.people.getPublicPhotos(user_id: @user_id)
      @urls = photos.map { |photo| "https://live.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg" }
    end
  end
end
