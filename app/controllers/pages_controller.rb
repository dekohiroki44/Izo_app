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
    if OneWord.exists?(1)
      @one_word = OneWord.find(1) 
    else
      OneWord.create(id: 1)
      @one_word = OneWord.find(1) 
    end
  end

  def discography
  end

  def profile
  end
end
