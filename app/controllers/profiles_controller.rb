class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
  end

  def show
    @profile = Profile.find(params[:id])
    @bookmark = Bookmark.where(profile_id: params[:id])
    @bookmarked_question = []
    @bookmark.each do |e|
      @bookmarked_question << Question.find(e.question_id)
    end
  end

  def edit
    @profile = Profile.find(current_user.id)
  end

  def update
    @profile = Profile.find(params[:id])
    params = profile_params
    if params[:photo_url].nil?
      params[:photo_url] = @profile.photo_url
    else
      file = params[:photo_url].path
      cloudinary_file = Cloudinary::Uploader.upload(file)
      params[:photo_url] = cloudinary_file['public_id']
    end
    @profile.update(params)
    redirect_to @profile
  end

  private

  def profile_params
    params.require(:profile).permit(:photo_url, :username, :bio)
  end

end
