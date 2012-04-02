class CreateCrAccounts < ActiveRecord::Migration
  def change
    create_table :cr_accounts do |t|
      t.float :amount
      t.string :cr_date
      t.string :cr_type
      t.string :cheque
      t.integer :customer_id

      t.timestamps
    end
  end
end
