class DropUploads < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :upload_id
    remove_column :answers, :upload_id
    drop_table :uploads
  end
end
