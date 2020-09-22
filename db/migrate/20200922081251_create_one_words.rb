class CreateOneWords < ActiveRecord::Migration[5.2]
  def change
    create_table :one_words do |t|
      t.string :content

      t.timestamps
    end
  end
end
