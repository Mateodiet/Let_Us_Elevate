class CreateUserChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :user_challenges do |t|
      t.references :challenge, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
