class AddColumnNameToCustumer < ActiveRecord::Migration[6.1]
  def change
    add_column :custumers, :name, :string
  end
end
