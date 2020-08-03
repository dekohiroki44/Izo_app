class AddColumnToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :url, :string
  end
end
