class CreateCapitalTypes < ActiveRecord::Migration
  def change
    create_table :capital_types do |t|
      t.string :name
      t.float :amount
      t.boolean :type
      t.string :ref
      t.string :tr_date

      t.timestamps
    end
  end
end
