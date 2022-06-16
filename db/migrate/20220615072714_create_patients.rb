class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.integer :number
      t.string :health_issue

      t.timestamps
    end
  end
end
