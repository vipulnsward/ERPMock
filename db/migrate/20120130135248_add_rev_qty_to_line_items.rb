class AddRevQtyToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :rev_qty, :integer
  end
end
