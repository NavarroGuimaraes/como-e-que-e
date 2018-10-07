class RemoveTutorialIdFromTutorial < ActiveRecord::Migration[5.2]
  def change
    remove_column :tutorials, :tutorial_id, :int
  end
end
