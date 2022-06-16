class CreateMobiles < ActiveRecord::Migration[6.1]
  def change
    create_table :mobiles do |t|
      t.string :name
      t.integer :price
      t.string :sim

      t.timestamps
    end
  end
end
