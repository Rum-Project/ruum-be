class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :photo

      t.timestamps
    end
  end
end
