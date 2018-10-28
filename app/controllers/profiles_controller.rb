class ProfilesController < ApplicationController
  # before_action :authenticate_user!, :except => [ :show, :index ]

  def index
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def update
  end

  def destroy
  end

end