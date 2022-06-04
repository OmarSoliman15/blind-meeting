class CreateBlindDates < ActiveRecord::Migration[7.0]
  def change
    create_table :blind_dates do |t|
      t.date :meeting_date

      t.timestamps
    end
  end
end
