class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :neighborhood_id
      t.string :description
      t.string :street_address
      t.string :website
      t.string :cover_photo

      t.timestamps

    end
  end
end
