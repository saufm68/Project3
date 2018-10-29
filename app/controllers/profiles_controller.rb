class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(current_user.id)
  end

  def update
    @profile = Profile.find(params[:id])
    if params[:profile][:username]
      @profile.username = params[:profile][:username]
    else
      @profile.bio = params[:profile][:bio]
    end
    @profile.save
    redirect_to '/settings'
  end

end