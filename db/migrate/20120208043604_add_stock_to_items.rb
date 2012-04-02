class AddStockToItems < ActiveRecord::Migration
  def change
    add_column :items, :stock, :integer
  end
end
