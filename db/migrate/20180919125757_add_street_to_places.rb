class AddStreetToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :street, :string
  end
end
