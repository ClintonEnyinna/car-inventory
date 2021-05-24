class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.string :condition, null: false
      t.integer :price_cents, null: false
      t.references :dealership, foreign_key: true, index: true
    end
  end
end
