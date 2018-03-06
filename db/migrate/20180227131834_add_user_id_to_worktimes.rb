class AddUserIdToWorktimes < ActiveRecord::Migration
  def change
    add_column :worktimes, :user_id, :integer
    add_index :worktimes, :user_id
  end
end
