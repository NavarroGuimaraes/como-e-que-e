class AddColumnsToContent < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :link, :string
  end
end
