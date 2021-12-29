class CreateNurses < ActiveRecord::Migration[7.0]
  def change
    create_table :nurses do |t|
      t.string :name
      t.time :shift_start
      t.time :shift_end
      t.references :ward, null: false, foreign_key: true

      t.timestamps
    end
  end
end
