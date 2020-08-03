class AddColumnToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :sitelink, :string
  end
end
