class AddAccQtyToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :acc_qty, :integer
  end
end
