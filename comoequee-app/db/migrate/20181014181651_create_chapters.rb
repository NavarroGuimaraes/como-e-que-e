class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :name
      t.integer :score

      t.timestamps
    end
  end
end
