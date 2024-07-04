class AddColumnToEstates < ActiveRecord::Migration[7.1]
  def change
    add_column :estates, :description, :string
    add_column :estates, :price, :integer
    add_column :estates, :availability, :boolean, default: true
  end
end
