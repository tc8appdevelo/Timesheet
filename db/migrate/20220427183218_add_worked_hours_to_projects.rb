class AddWorkedHoursToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :worked_hours, :float
  end
end
