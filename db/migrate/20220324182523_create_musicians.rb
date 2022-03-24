class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :photo

      t.timestamps
    end
  end
end
