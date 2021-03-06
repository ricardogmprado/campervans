class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :campervan, foreign_key: true
      t.integer :total_price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
