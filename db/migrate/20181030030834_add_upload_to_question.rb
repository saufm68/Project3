class AddUploadToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :upload, foreign_key: true
  end
end
