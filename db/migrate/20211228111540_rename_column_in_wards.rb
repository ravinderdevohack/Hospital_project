class RenameColumnInWards < ActiveRecord::Migration[7.0]
  def change
    remove_column :wards, :type, :string
    add_column :wards, :w_type, :string
  end
end
