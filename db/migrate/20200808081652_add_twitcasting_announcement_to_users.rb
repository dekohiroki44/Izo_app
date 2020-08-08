class AddTwitcastingAnnouncementToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :twitcasting_announcement, :string
  end
end
