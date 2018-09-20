class RemoveAdressAndLatAndLongFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :adress, :string
    remove_column :places, :lat, :decimal
    remove_column :places, :long, :decimal
  end
end
