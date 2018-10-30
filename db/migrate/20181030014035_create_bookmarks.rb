class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    drop_table :favourites
    create_table :bookmarks do |t|
      t.references :profile
      t.references :question
      t.timestamps
    end
  end
end
