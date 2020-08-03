class RenameLinkUrlColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :url, :sitelink
  end
end
