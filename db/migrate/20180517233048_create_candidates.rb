class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.references :user, foreign_key: true
      t.references :ballot, foreign_key: true

      t.timestamps
    end
    add_index :candidates, [:user_id, :ballot_id], unique: true
  end
end
