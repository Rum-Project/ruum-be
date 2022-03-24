class CreateRoomBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :room_bookings do |t|
      t.datetime :date
      t.references :room, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
