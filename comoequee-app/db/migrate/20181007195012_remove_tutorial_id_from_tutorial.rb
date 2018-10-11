# frozen_string_literal: true

class RemoveTutorialIdFromTutorial < ActiveRecord::Migration[5.2]
  def change
    remove_column :tutorials, :tutorial_id, :int
  end
end
