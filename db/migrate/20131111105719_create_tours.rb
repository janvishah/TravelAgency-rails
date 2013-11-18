class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :packagelocation_id
      t.string :name
      t.integer :days
      t.integer :nights
      t.datetime :date
      t.text :text

      t.timestamps
    end
      add_index :tours, [:name, :days , :date], unique:true
  end
end
