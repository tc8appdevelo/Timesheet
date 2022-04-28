class Employee < ApplicationRecord

  has_many :projects,
    primary_key: :id,
    foreign_key: :employee_id,
    class_name: :Project


  def add_project(project)
    p project.total_hours
    p project.worked_hours
  end
  
end
