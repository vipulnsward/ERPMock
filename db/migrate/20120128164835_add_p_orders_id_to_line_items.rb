class AddPOrdersIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :p_order_id, :integer
  end
end
