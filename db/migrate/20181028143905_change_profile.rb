class ChangeProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :level, :integer
  end
end
