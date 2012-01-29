class CreatePOrders < ActiveRecord::Migration
  def change
    create_table :p_orders do |t|
      t.integer :ref
      t.string :issue
      t.string :expires

      t.timestamps
    end
  end
end
