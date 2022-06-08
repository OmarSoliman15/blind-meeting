class BlindDate < ApplicationRecord
  has_many :teams
  has_many :employees, through: :teams

  def self.is_next_ready?(date)
    where(meeting_date: date).exists?
  end

  def create_teams
    teams_count = Unit.with_employees.count
    employees_count = Employee.count

    teams_count.times do |count|
      create_team_obj(teams_count, employees_count, count)
    end
  end

  private

  def create_team_obj(teams_count, employees_count, iteration)
    team = Team.create(blind_date_id: self.id)
    employees = Employee.select(:id, :unit_id).order(:unit_id).order("RANDOM()").pluck(:id)
    indexes = []
    until iteration >= employees_count do
      indexes.push(iteration)
      iteration += teams_count
    end
    team.employees = Employee.where(id: employees.values_at(*indexes))

    leader = team.employees.order_lead_time.first
    team.leader_id = leader&.id
    team.save!
    leader.update(last_lead_at: DateTime.now)
  end
end
