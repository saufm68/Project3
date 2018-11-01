class AddMediaToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :media, :string
  end
end
