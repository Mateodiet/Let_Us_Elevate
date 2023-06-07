class CreateDesigns < ActiveRecord::Migration[7.0]
  def change
    create_table :designs do |t|
      t.string :type
      t.string :strategy
      t.string :authority
      t.string :notself

      t.timestamps
    end
  end
end
