class AddCoordinatesToCampervan < ActiveRecord::Migration[5.2]
  def change
    add_column :campervans, :latitude, :float
    add_column :campervans, :longitude, :float
  end
end
