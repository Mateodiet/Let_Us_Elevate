class ModifUserToRespondApi < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :birthdate
    remove_column :users, :hourdate
  end
end
