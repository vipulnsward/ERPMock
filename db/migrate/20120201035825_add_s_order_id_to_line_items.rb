class AddSOrderIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :s_order_id, :integer
  end
end
