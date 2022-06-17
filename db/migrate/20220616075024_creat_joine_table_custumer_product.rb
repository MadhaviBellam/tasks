class CreatJoineTableCustumerProduct < ActiveRecord::Migration[6.1]
  def change
    create_join_table :custumers, :products do |t|
    end
  end
end
