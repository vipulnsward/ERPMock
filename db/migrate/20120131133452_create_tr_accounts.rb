class CreateTrAccounts < ActiveRecord::Migration
  def change
    create_table :tr_accounts do |t|
      t.float :amount
      t.string :tr_date
      t.string :tr_type
      t.string :cheque
      t.integer :supplier_id

      t.timestamps
    end
  end
end
