class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place

      t.timestamps
    end
    add_index :places, :place, unique: true
  end
end
