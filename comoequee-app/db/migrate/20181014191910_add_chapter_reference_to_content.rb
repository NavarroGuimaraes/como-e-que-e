class AddChapterReferenceToContent < ActiveRecord::Migration[5.2]
  def change
    add_reference :contents, :chapter, foreign_key: true
  end
end
