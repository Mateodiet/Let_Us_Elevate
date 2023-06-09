class AddLestrucs < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :api_key, :string
    add_column :users, :date, :string
    add_column :users, :timezone, :string


  end
end
