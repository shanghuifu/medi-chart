class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string  :name, null: false
      t.string  :kana, null: false
      t.string  :email, null: false
      t.string  :phone, null: false
      t.date    :birthday
      t.integer :age
      t.integer :sex
      t.string  :zip
      t.string  :address1
      t.string  :address2
      t.timestamps
    end
  end
end
