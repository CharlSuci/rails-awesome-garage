class CreateCars < ActiveRecord::Migration[7.2]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :fuel
      t.integer :owner_id

      t.timestamps
    end
  end
end
