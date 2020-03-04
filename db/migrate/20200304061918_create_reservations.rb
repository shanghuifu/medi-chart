class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date  :date, null: false
      t.text :memo
      t.references :schedule, foreign_key: true
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end
