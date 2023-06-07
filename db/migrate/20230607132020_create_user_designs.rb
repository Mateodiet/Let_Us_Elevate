class CreateUserDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :user_designs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.string :description
      t.references :design, null: false, foreign_key: true

      t.timestamps
    end
  end
end
