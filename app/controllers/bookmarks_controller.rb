class BookmarksController < ApplicationController

  def create
    newParams = {profile_id: params[:profile_id], question_id: params[:question_id]}
    @bookmark = Bookmark.new(newParams)
    @bookmark.save
  end

  def  destroy
  end

end