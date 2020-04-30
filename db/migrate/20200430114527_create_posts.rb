class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :picture

      t.timestamps
    end
  end
end
