class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :in_stock
      t.string :expiration_date

      t.timestamps
    end
  end
end
