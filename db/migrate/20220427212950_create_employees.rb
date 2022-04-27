class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :role
      t.float :total_hours
      t.float :available_hours

      t.timestamps
    end
  end
end
