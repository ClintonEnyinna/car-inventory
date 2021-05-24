class AddTimestampToDealershipAndCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :created_at, :datetime, precision: 6, null: false
    add_column :cars, :updated_at, :datetime, precision: 6, null: false

    add_column :dealerships, :created_at, :datetime, precision: 6, null: false
    add_column :dealerships, :updated_at, :datetime, precision: 6, null: false
  end
end
