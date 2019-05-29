class CreateCampervans < ActiveRecord::Migration[5.2]
  def change
    create_table :campervans do |t|
      t.string :name
      t.integer :belted_seats
      t.string :bed_type
      t.integer :sleeps
      t.string :location
      t.references :user, foreign_key: true
      t.string :photo
      t.integer :daily_price

      t.timestamps
    end
  end
end
