class PagesController < ApplicationController
  def home
    @posts = Post.first(2)
    @live = Live.find_by('date >= ?', Date.today)
  end

  def discography
  end

  def profile
  end
end
