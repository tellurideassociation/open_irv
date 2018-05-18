class CreateBallots < ActiveRecord::Migration[5.2]
  def change
    create_table :ballots do |t|
      t.string :title, null: false
      # created by:
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :ballots, :title, unique: true
  end
end
