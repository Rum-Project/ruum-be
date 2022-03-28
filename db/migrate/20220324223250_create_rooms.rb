class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :details
      t.text :photo
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.float :price
      t.string :amenities
      t.string :instruments
      t.integer :capacity
      t.references :host, foreign_key: true

      t.timestamps
    end
  end
end
