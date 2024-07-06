class AddCoordinatesToEstates < ActiveRecord::Migration[7.1]
  def change
    add_column :estates, :latitude, :float
    add_column :estates, :longitude, :float
  end
end
