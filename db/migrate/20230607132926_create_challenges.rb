class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :description
      t.string :title
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
