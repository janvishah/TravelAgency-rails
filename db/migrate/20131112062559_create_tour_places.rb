class CreateTourPlaces < ActiveRecord::Migration
  def change
    create_table :tour_places do |t|
      t.integer :tour_id
      t.integer :place_id

      t.timestamps
    end
    	add_index :tour_places, [:tour_id, :place_id], unique:true
  end
end
