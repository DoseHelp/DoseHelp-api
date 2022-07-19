class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.string :issue_date
      t.string :expiry_date
      t.boolean :takeaway
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :drug, null: false, foreign_key: true
      t.boolean :prescription_valid

      t.timestamps
    end
  end
end
