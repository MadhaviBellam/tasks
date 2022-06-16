class CreateJoinTableCustumerProduct < ActiveRecord::Migration[6.1]
  def change
    create_join_table :custumers, :products do |t|
      # t.index [:custumer_id, :product_id]
      # t.index [:product_id, :custumer_id]
    end
  end
end
