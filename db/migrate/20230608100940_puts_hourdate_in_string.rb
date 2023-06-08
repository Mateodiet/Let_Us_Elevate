class PutsHourdateInString < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :hourdate, :string
  end
end
