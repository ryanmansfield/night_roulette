class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :venue
      t.references :user
      t.date :date
      t.time :time
      t.string :uber_session_id

      t.timestamps
    end
  end
end
