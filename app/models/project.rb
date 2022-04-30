class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :total_hours, presence: true

  belongs_to :employee,
    optional: true,
    primary_key: :id,
    foreign_key: :employee_id,
    class_name: :Employee


end
