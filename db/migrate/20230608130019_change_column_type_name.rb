class ChangeColumnTypeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :designs, :type, :name_type
  end
end
