class CreatePackagelocations < ActiveRecord::Migration
  def change
    create_table :packagelocations do |t|
      t.string :location
      t.text :text
      t.string :image

      t.timestamps
    end
    add_index :packagelocations, :location, unique: true
  end
end