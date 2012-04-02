class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :desc
      t.string :street
      t.string :state
      t.string :country
      t.integer :zip
      t.string :mail
      t.string :altmail
      t.string :ct1
      t.string :ct2

      t.timestamps
    end
  end
end
