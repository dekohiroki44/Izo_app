class PagesController < ApplicationController
  def home
    @post = Post.first
    @live = Live.first
  end

  def about
  end
end
