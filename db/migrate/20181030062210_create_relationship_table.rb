class CreateRelationshipTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks_profiles do |t|
      t.references :bookmark
      t.references :profile
      t.timestamps
    end

    create_table :bookmarks_questions do |t|
      t.references :bookmark
      t.references :question
      t.timestamps
    end
  end
end
