class AddColumnsToUserTutorial < ActiveRecord::Migration[5.2]
  def change
    add_column :user_tutorials, :conclusion, :integer
  end
end
