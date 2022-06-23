class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :height
      t.integer :width
      t.string :size

      t.timestamps
    end
  end
end
