class AddColumnWeightToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :weight, :string
  end
end
