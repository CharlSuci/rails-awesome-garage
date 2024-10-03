class AddOwnerReferencesToCars < ActiveRecord::Migration[7.2]
  def change
    remove_column :cars, :owner_id, :integer
    add_reference :cars, :owner, null: false, foreign_key: true
  end
end
