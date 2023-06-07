class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :birthdate, :string
    add_column :users, :hourdate, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :username, :string





  end
end
