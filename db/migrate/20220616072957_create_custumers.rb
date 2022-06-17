class CreateCustumers < ActiveRecord::Migration[6.1]
  def change
    create_table :custumers do |t|

      t.timestamps
    end
  end
end
