class CreateCapitalAccounts < ActiveRecord::Migration
  def change
    create_table :capital_accounts do |t|
      t.float :amount
      t.boolean :type
      t.integer :capital_type_id
      t.string :tr_date

      t.timestamps
    end
  end
end
