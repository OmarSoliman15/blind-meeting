class Team < ApplicationRecord
  belongs_to :blind_date
  has_and_belongs_to_many :employees

  belongs_to :restaurant, optional: true
  belongs_to :leader, class_name: 'Employee', optional: true

  # validates_uniqueness_of :leader_id, :allow_blank => true,  scope: :blind_date_id
end
