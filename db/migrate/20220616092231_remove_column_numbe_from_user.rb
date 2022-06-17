class RemoveColumnNumbeFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :number, :integer
  end
end
