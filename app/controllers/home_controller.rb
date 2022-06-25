class HomeController < ApplicationController
  def landing
    if current_user.nil?
      redirect_to new_user_session_path
    else
      if current_user.profile.nil?
        redirect_to(new_profile_path)
      elsif current_user.bank_detail.nil?
        redirect_to(new_bank_detail_path)
      end
    end
  end
end
