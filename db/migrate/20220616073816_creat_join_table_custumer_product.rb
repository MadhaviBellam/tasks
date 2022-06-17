class CreatJoinTableCustumerProduct < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Customer, :Product do |t|
    end
  end
end
