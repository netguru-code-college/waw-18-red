class AddAvgRateToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :avg_rate, :decimal
  end
end
