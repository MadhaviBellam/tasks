class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :pages
      t.integer :cost

      t.timestamps
    end
  end
end
