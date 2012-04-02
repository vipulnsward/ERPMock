class CreateIStocks < ActiveRecord::Migration
  def change
    create_table :i_stocks do |t|
      t.integer :amt
      t.string :tr_type
      t.integer :item_id

      t.timestamps
    end
  end
end
