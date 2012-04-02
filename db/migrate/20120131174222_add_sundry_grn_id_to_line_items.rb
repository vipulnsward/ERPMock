class AddSundryGrnIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :sundry_grn_id, :integer
  end
end
