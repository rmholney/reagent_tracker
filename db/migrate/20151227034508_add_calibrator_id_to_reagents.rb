class AddCalibratorIdToReagents < ActiveRecord::Migration
  def change
    add_column :reagents, :calibrator_id, :integer
  end
end
