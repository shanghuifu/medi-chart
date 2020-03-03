class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string  :name, null: false
      t.string  :kana, null: false
      t.date    :birthday
      t.integer :age
      t.integer :sex
      t.integer :zipcode
      t.string  :address
      t.string  :phone, null: false
      t.string  :email, null: false
      t.timestamps
    end
  end
end
