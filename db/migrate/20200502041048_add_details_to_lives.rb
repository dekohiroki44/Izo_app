class AddDetailsToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :performer, :text
    add_column :lives, :time, :string
    add_column :lives, :price, :string
    rename_column :lives, :name, :title
  end
end
