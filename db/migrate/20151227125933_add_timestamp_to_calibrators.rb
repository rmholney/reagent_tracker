class AddTimestampToCalibrators < ActiveRecord::Migration
  def change
    add_timestamps(:calibrators)
  end
end
