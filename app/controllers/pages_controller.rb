class PagesController < ApplicationController
  def home
    if Rails.env.development?
      @user = User.find_by(email: Rails.application.credentials.account[:mail][:hiroki])
    elsif Rails.env.test?
      @user = User.first
    elsif Rails.env.production?
      @user = User.find_by(email: Rails.application.credentials.account[:mail][:izo]) ||
        User.find_by(email: Rails.application.credentials.account[:mail][:hiroki])
    end
    @posts = Post.first(2)
    @live = Live.find_by('date >= ?', Date.today)
  end

  def discography
  end

  def profile
  end
end
