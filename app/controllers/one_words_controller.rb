class OneWordsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def new
    @one_word = OneWord.new
  end

  def create
    one_word = OneWord.new(one_words_params)
    if one_word.save
      flash[:success] = "更新しました"
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @one_word = OneWord.first
  end

  def update
    @one_word = OneWord.first
    if params[:one_word][:image_id]
      OneWord.first.image.purge
    end
    respond_to do |format|
      if @one_word.update_attributes(one_words_params)
        format.html { redirect_to root_path, notice: '設定しました' }
        format.js { @status = "success" }
      else
        format.html { render root_path }
        format.js { render root_path }
      end
    end
  end

  private

  def one_words_params
    params.require(:one_word).permit(:content, :image)
  end
end
