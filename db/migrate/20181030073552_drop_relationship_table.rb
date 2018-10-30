class DropRelationshipTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :bookmarks_profiles
    drop_table :bookmarks_questions
  end
end
