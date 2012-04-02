class CreateSundryGrns < ActiveRecord::Migration
  def change
    create_table :sundry_grns do |t|
      t.string :bill
      t.string :billdate
      t.string :issue
      t.integer :supplier_id

      t.timestamps
    end
  end
end
