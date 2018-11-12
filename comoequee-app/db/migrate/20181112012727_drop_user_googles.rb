class DropUserGoogles < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_googles
  end
end
