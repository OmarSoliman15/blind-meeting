class Employee < ApplicationRecord
  belongs_to :unit
  has_and_belongs_to_many :teams

  def self.order_lead_time
    order(Arel.sql('CASE WHEN last_lead_at IS NULL THEN 1 ELSE 2 END, last_lead_at DESC'))
  end
end
