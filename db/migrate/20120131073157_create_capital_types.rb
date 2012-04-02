class CreateCapitalTypes < ActiveRecord::Migration
  def change
    create_table :capital_types do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
