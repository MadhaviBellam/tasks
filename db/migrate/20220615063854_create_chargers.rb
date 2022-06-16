class CreateChargers < ActiveRecord::Migration[6.1]
  def change
    create_table :chargers do |t|
      t.string :name
      t.integer :cost
      t.references :mobile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
