class AddColumnsToUserGoogle < ActiveRecord::Migration[5.2]
  def change
    add_column :user_googles, :phone, :string
    add_column :user_googles, :facebook, :string
    add_column :user_googles, :bio, :text
  end
end
