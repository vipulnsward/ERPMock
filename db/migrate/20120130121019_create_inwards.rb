class CreateInwards < ActiveRecord::Migration
  def change
    create_table :inwards do |t|
      t.string :indate
      t.string :intime
      t.string :chalan
      t.string :chalandate
      t.integer :p_order_id

      t.timestamps
    end
  end
end
