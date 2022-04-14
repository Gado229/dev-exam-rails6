class CreateNearestStations < ActiveRecord::Migration[6.0]
  def change
    create_table :nearest_stations do |t|
      t.string :name
      t.string :railway
      t.integer :time
      t.references :property, foreign_key: true
    end
  end
end
