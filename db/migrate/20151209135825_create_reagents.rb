class CreateReagents < ActiveRecord::Migration
  def change
    create_table :reagents do |t|
      t.string :reagent_name
      t.date :expiration
      t.integer :flex
      t.integer :flex_per_box
      t.integer :test_per_flex
      
      t.timestamps
    end
  end
end
