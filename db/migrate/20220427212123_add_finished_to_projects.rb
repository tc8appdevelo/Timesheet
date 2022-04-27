class AddFinishedToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :finished, :boolean, default: false
  end
end
