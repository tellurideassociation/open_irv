class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true
      t.references :candidate, foreign_key: true
      t.datetime :cast_at

      t.timestamps
    end
  end
end
