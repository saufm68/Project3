class AddUploadToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :upload, foreign_key: true
  end
end
