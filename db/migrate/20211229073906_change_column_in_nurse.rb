class ChangeColumnInNurse < ActiveRecord::Migration[7.0]
  def change
    change_column :nurses, :shift_start, :string
    change_column :nurses, :shift_end, :string
  end
end
