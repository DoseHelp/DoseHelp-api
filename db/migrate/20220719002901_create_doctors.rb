class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :surname
      t.string :clinic
      t.string :address
      t.string :phone
      t.string :fax
      t.string :prescriber_number

      t.timestamps
    end
  end
end
