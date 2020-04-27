class CreateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :lives do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :place
      t.string :picture

      t.timestamps
    end
  end
end
