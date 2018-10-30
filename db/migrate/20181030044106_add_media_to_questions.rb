class AddMediaToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :media, :string
  end
end
