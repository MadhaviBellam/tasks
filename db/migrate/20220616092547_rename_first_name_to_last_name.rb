class RenameFirstNameToLastName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :firstname, :lastname
  end
end
