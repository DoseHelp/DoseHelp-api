class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :brand_name
      t.string :form
      t.string :strength
      t.float :cost

      t.timestamps
    end
  end
end
