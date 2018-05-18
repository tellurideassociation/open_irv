class CreateNonces < ActiveRecord::Migration[5.2]
  def change
    create_table :nonces do |t|
      t.string :secret, null: false
      t.references :vote, foreign_key: true, unique: true

      t.timestamps
    end
    add_index :nonces, :secret, unique: true
  end
end
