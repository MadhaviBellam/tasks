class CreateMeeshows < ActiveRecord::Migration[6.1]
  def change
    create_table :meeshows do |t|
      t.string :categories

      t.timestamps
    end
  end
end
