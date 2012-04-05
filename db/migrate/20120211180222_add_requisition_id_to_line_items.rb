class AddRequisitionIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :requisition_id, :integer
  end
end
