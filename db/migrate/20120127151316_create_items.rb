class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :rate
      t.string :unit
      t.text :desc

      t.timestamps
    end
  end
end
