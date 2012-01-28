class CreateIclasses < ActiveRecord::Migration
  def change
    create_table :iclasses do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
