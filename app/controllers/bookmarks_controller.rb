class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
    newParams = {profile_id: params[:profile_id], question_id: params[:question_id]}
    @bookmark = Bookmark.new(newParams)
    @bookmark.save
    @question = Question.find(params[:question_id])
    redirect_to @question
  end

  def  destroy
    @question = Question.find(params[:question_id])
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to @question
  end

end