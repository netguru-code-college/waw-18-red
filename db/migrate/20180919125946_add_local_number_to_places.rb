class AddLocalNumberToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :local_number, :string
  end
end
