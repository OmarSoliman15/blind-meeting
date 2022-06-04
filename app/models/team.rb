class Team < ApplicationRecord
  belongs_to :blind_date
  belongs_to :restaurant
  belongs_to :leader
end
