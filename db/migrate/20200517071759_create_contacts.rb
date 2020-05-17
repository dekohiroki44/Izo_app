class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :sender, null: false
      t.string :email, null: false
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
