class RemoveHoursFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :hours, :float
  end
end
