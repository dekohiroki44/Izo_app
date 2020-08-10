class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def edit
  end

  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to root_path, notice: '設定しました' }
        format.js { @status = "success" }
      else
        format.html { render root_path }
        format.js { render root_path }
      end
    end
  end

  private

  def set_user
    if Rails.env.development?
      @user = User.find_by(email: Rails.application.credentials.account[:mail][:hiroki])
    elsif Rails.env.test?
      @user = User.first
    elsif Rails.env.production?
      @user = User.find_by(email: Rails.application.credentials.account[:mail][:izo]) ||
        User.find_by(email: Rails.application.credentials.account[:mail][:hiroki])
    end
  end

  def user_params
    params.require(:user).permit(:twitcasting_announcement)
  end
end
