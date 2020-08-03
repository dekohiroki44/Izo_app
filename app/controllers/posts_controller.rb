class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      flash[:success] = "Newsを更新しました"
      redirect_to posts_url
    else
      render new_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if params[:post][:image_ids]
      params[:post][:image_ids].each do |image_id|
        image = post.images.find(image_id)
        image.purge
      end
    end
    if post.update_attributes(post_params)
      flash[:success] = "newsを編集しました"
      redirect_to posts_url
    else
      render edit_post_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:success] = "newsを削除しました"
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :date, :sitelink, :images)
  end
end
