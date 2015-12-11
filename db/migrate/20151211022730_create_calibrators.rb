class CreateCalibrators < ActiveRecord::Migration
  def change
    create_table :calibrators do |t|
      t.string :name
      t.string :lot
      t.date :expiration
      t.integer :box
    end
  end
end
