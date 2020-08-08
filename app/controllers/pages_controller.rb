class PagesController < ApplicationController
  def home
    if user_signed_in?
      if Rails.env.development? || Rails.env.test?
        @user = current_user
      elsif Rails.env.production?
        @user = User.find(email: Rails.application.credentials.account[:mail][:izo])
      end
    end
    @posts = Post.first(2)
    @live = Live.find_by('date >= ?', Date.today)
  end

  def discography
  end

  def profile
  end
end
