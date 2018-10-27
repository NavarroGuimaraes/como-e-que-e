class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :number
      t.string :name
      t.text :instruction

      t.timestamps
    end
  end
end
