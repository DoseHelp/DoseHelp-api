class CreateDispenses < ActiveRecord::Migration[6.1]
  def change
    create_table :dispenses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prescription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
