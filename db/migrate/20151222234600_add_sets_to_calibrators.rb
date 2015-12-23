class AddSetsToCalibrators < ActiveRecord::Migration
  def change
    add_column :calibrators, :sets, :integer
  end
end
