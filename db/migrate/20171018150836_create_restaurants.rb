class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :description
      t.text :location
      t.integer :rating

      t.timestamps
    end
  end
end
