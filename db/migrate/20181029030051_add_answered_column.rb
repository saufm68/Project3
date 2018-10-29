class AddAnsweredColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :answered, :boolean
  end
end
