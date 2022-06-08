class Unit < ApplicationRecord
  has_many :employees
  scope :with_employees, -> { where('EXISTS(SELECT 1 FROM employees WHERE unit_id = units.id)') }
end
