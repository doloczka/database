class CreateTerminies < ActiveRecord::Migration
  def change
    create_table :terminies do |t|
      t.references :grupy, index: true, foreign_key: true
      t.integer :nr_zajec
      t.date :poczatek
      t.date :koniec

      t.timestamps null: false
    end
  end
end
