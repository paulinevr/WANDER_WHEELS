class CreateVans < ActiveRecord::Migration[7.1]
  def change
    create_table :vans do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :car_brand
      t.string :model
      t.integer :capacity
      t.integer :mileage
      t.string :production_year
      t.string :fuel_type
      t.float :price_per_day

      t.timestamps
    end
  end
end
