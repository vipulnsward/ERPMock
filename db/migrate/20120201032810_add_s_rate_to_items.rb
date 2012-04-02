class AddSRateToItems < ActiveRecord::Migration
  def change
    add_column :items, :s_rate, :float
  end
end
