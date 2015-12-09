class CreateTechs < ActiveRecord::Migration
  def change
    create_table :techs do |t|
      t.string :techname
      t.string :email
      
      t.timestamps
    end
  end
end
