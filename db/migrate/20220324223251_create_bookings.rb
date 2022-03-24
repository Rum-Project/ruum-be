class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.references :musician, foreign_key: true

      t.timestamps
    end
  end
end
