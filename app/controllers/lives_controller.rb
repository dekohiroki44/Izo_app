class LivesController < ApplicationController
  def index
    @lives = Live.all
  end

  def show
    @live = Live.find(params[:id])
  end

  def new
    @live = Live.new
  end

  def create
    live = Live.new(live_params)
    if live.save
      flash[:success] = "liveを更新しました"
      redirect_to lives_url
    else
      render new_live_path
    end
  end

  def edit

  end

  def update
    
  end

  private

  def live_params
    params.
    require(:live).
    permit(:title, :description, :date, :place, :time, :price, :performer, :picture)
  end
end
