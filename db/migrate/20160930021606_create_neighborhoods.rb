class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :city
      t.integer :zip_code

      t.timestamps

    end
  end
end
