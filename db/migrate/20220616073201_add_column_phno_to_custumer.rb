class AddColumnPhnoToCustumer < ActiveRecord::Migration[6.1]
  def change
    add_column :custumers, :phno, :integer
  end
end
