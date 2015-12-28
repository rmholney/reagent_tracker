class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :box
      t.string :type

      t.timestamps null: false
    end
  end
end
