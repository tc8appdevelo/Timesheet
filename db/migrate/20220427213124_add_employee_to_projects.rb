class AddEmployeeToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :employee, null: true, foreign_key: true
  end
end
