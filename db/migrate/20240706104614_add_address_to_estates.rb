class AddAddressToEstates < ActiveRecord::Migration[7.1]
  def change
    add_column :estates, :address, :string
  end
end
