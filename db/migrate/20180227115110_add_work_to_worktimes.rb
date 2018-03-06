class AddWorkToWorktimes < ActiveRecord::Migration
  def change
    add_column :worktimes, :work, :text
  end
end
