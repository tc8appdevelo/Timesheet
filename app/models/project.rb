class Project < ApplicationRecord
  belongs_to :employee,
    optional: true,
    primary_key: :id,
    foreign_key: :employee_id,
    class_name: :Employee


end
