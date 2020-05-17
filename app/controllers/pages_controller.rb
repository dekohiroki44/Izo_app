class PagesController < ApplicationController
  def home
    @post = Post.first
    @live = Live.find_by('date >= ?', Date.today)
  end

  def discography
  end

  def profile
  end
end
