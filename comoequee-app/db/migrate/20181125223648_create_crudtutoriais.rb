class CreateCrudtutoriais < ActiveRecord::Migration[5.2]
  def change
    create_table :crudtutoriais do |t|
      t.string :id_seq
      t.string :namecourse
      t.string :namechapter
      t.string :contentchapter
      t.string :duration

      t.timestamps
    end
  end
end
