class AddColumnPriceToPoduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :cost, :integer
  end
end
