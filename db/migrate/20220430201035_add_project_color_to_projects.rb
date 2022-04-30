class AddProjectColorToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :project_color, :string
  end
end
