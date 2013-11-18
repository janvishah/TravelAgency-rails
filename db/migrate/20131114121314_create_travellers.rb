class CreateTravellers < ActiveRecord::Migration
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :address
      t.integer :ph_no
      t.string :email
      t.integer :children
      t.integer :adult

      t.timestamps
    end
    add_index :travellers, :email, unique: true
  end
end
