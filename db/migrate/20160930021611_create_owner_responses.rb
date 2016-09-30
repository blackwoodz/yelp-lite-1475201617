class CreateOwnerResponses < ActiveRecord::Migration
  def change
    create_table :owner_responses do |t|
      t.string :response
      t.integer :review_id
      t.integer :ownership_id

      t.timestamps

    end
  end
end
