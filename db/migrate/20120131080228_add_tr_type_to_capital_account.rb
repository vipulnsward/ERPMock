class AddTrTypeToCapitalAccount < ActiveRecord::Migration
  def change
    add_column :capital_accounts, :tr_type, :string
  end
end
