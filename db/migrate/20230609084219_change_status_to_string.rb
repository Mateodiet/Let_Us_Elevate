class ChangeStatusToString < ActiveRecord::Migration[7.0]
  def change
    change_column :user_challenges, :status, :string
  end
end
