class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :text, null: false
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end
