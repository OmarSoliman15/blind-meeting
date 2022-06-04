class CreateJoinTableEmployeesTeams < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :teams do |t|
      t.boolean :does_want_food
      t.index [:employee_id, :team_id]
      t.index [:team_id, :employee_id]
    end
  end
end
