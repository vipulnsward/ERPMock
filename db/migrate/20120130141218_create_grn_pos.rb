class CreateGrnPos < ActiveRecord::Migration
  def change
    create_table :grn_pos do |t|
      t.string :grn_date
      t.string :bill
      t.string :billdate
      t.integer :inward_id

      t.timestamps
    end
  end
end
