class AddReferenceDesignIdToChallenge < ActiveRecord::Migration[7.0]
  def change
    add_reference :challenges, :design, foreign_key: true
  end
end
