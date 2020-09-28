class PagesController < ApplicationController
  def home
    @posts = Post.first(2)
    @live = Live.find_by('date >= ?', Date.today)

    if OneWord.exists?(1)
      @one_word = OneWord.find(1) 
    else
      OneWord.create(id: 1)
      @one_word = OneWord.find(1) 
    end

    if Announcement.exists?(1)
      @announcement = Announcement.find(1) 
    else
      Announcement.create(id: 1)
      @announcement = Announcement.find(1) 
    end
  end

  def discography
  end

  def profile
  end
end
