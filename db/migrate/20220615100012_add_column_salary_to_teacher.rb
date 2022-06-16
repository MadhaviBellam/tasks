class AddColumnSalaryToTeacher < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :salary, :integer
  end
end
