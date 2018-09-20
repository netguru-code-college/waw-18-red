class AddHouseNumberToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :house_number, :string
  end
end
