class CreateBankDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_details do |t|
      t.string :account_number, null: false
      t.string :ifsc_code, null: false
      t.string :swift_code, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
