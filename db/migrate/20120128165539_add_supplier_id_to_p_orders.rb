class AddSupplierIdToPOrders < ActiveRecord::Migration
  def change
    add_column :p_orders, :supplier_id, :integer
  end
end
