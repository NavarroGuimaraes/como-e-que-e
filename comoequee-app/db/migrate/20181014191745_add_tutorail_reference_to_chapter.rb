class AddTutorailReferenceToChapter < ActiveRecord::Migration[5.2]
  def change
    add_reference :chapters, :tutorial, foreign_key: true
  end
end
