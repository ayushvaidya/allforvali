class AddUserIdToLoops < ActiveRecord::Migration[5.2]
  def change
    add_column :loops, :user_id, :integer
    add_index :loops, :user_id
  end
end
