class AnnouncementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_announcement

  def edit
  end

  def update
    respond_to do |format|
      if @announcement.update_attributes(announcements_params)
        format.html { redirect_to root_path, notice: '設定しました' }
        format.js { @status = "success" }
      else
        format.html { render root_path }
        format.js { render root_path }
      end
    end
  end

  private

  def set_announcement
    @announcement = Announcement.find(1)
  end

  def announcements_params
    params.require(:announcement).permit(:content)
  end
end
