class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :surname
      t.string :dob
      t.string :address
      t.string :phone
      t.string :gender
      t.string :ihi
      t.float :credit

      t.timestamps
    end
  end
end
