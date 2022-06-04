class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.references :blind_date, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.references :leader, null: false, foreign_key: { to_table: :employees }
      t.integer :size

      t.timestamps
    end
  end
end
