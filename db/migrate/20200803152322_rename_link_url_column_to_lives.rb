class RenameLinkUrlColumnToLives < ActiveRecord::Migration[5.2]
  def change
    rename_column :lives, :url, :sitelink
  end
end
