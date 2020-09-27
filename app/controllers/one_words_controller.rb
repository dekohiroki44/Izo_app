class OneWordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_one_word

  def edit
  end

  def update
    if params[:one_word][:image_delete] == "1"
      @one_word.image.purge
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

  def set_one_word
    @one_word = OneWord.find(1)
  end

  def one_words_params
    params.require(:one_word).permit(:content, :image)
  end
end
