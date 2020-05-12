class LivesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

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
      flash[:success] = "liveを作成しました"
      redirect_to lives_url
    else
      render new_live_path
    end
  end

  def edit
    @live = Live.find(params[:id])
  end

  def update
    live = Live.find(params[:id])
    if live.update_attributes(live_params)
      flash[:success] = "liveを編集しました"
      redirect_to lives_url
    else
      render edit_live_path
    end
  end

  private

  def live_params
    params.
    require(:live).
    permit(:title, :description, :date, :place, :time, :price, :performer, :picture)
  end
end
