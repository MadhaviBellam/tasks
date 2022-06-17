class CreateGoogleforms < ActiveRecord::Migration[6.1]
  def change
    create_table :googleforms do |t|
      t.string :firstname
      t.string :lastname
      t.string :age
      t.string :dob
      t.string :email
      t.string :phno
      t.string :pincode
      t.string :place
      t.string :education

      t.timestamps
    end
  end
end
