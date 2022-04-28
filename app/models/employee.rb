class Employee < ApplicationRecord
  # not sure if you put the calculations for what happenes
  # when assigned a project in here and just use the method
  # in the controller or what the convention is.

  def add_project(project)
    p project.total_hours
    p project.worked_hours
    
  end
end
