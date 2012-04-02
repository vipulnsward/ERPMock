class AddReqQtyToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :req_qty, :integer
  end
end
