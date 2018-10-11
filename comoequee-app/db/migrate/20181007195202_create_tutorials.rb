# frozen_string_literal: true

class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :name
      t.integer :time

      t.timestamps
    end
  end
end
