class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "設定しました"
      redirect_to root_path
    else
      format.js { render root_path }
    end
  end

  private

  def set_user
    if Rails.env.development? || Rails.env.test?
      @user = current_user
    elsif Rails.env.production?
      @user = User.find(email: Rails.application.credentials.account[:mail][:izo])
    end
  end

  def user_params
    params.require(:user).permit(:twitcasting_announcement)
  end
end
