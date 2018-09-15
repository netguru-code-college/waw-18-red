class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :adress
      t.text :description
      t.decimal :lat
      t.decimal :long
      t.integer :publisher_id
      t.integer :rate
      

      t.timestamps
    end
  end
end
