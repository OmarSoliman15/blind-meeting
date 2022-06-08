class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.references :blind_date, null: false, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.references :leader, foreign_key: { to_table: :employees }
      t.integer :no_going_to_lunch
      t.index [:blind_date_id, :leader_id], unique: true

      t.timestamps
    end
  end
end
