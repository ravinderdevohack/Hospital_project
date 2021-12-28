class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :gender
      t.string :age
      t.date :admit_date
      t.string :disease
      t.references :doctor, null: false, foreign_key: true
      t.references :ward, null: false, foreign_key: true

      t.timestamps
    end
  end
end
