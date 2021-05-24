class CreateDealershipTable < ActiveRecord::Migration[6.0]
  def change
    create_table :dealerships do |t|
      t.string :name, null: false
      t.string :address, null: false
    end
  end
end
