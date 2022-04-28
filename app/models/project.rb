class Project < ApplicationRecord
  belongs_to :employee,
    primary_key: :id,
    foreign_key: :employee_id,
    class_name: :Employee


end
