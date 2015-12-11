class AddLotToReagents < ActiveRecord::Migration
  def change
    add_column :reagents, :lot, :string
  end
end
