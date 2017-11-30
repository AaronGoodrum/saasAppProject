class CreatePlans < ActiveRecord::Migration[5.0]
  # create a database table to store our two membership plan offerings.
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :price
      t.timestamps
    end
  end
end
