class AddIclassIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :iclass_id, :integer
  end
end
