class RemoveThemeTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :challenges, :theme
    drop_table :themes

  end
end
