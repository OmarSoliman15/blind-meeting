class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :unit, null: false, foreign_key: true
      t.datetime :last_lead_at
      t.timestamps
    end
  end
end
