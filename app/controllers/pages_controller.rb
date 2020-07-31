class PagesController < ApplicationController
  def home
    @post1 = Post.first
    @post2 = Post.second
    @live = Live.find_by('date >= ?', Date.today)
  end

  def discography
  end

  def profile
  end
end
