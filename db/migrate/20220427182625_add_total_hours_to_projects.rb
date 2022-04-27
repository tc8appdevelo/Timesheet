class AddTotalHoursToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :total_hours, :float
  end
end
