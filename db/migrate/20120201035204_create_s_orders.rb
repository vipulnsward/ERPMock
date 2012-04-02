class CreateSOrders < ActiveRecord::Migration
  def change
    create_table :s_orders do |t|
      t.string :ref
      t.string :issue
      t.integer :customer_id

      t.timestamps
    end
  end
end
