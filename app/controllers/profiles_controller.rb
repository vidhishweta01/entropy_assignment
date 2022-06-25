class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)
    if @profile.save
      redirect_to root_path
    else
      @message = @profile.errors.messages
      format.html { redirect_to new_profile_path, alert: @message }
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :country_code, :phone_number, :user_id)
  end
end
