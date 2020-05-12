class PagesController < ApplicationController
  def home
    @post = Post.first
    @live = Live.first
  end

  def discography
  end

  def profile
  end
end
