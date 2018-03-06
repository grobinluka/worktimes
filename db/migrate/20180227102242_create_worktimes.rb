class CreateWorktimes < ActiveRecord::Migration
  def change
    create_table :worktimes do |t|
      t.date :datum
      t.time :prihod
      t.time :odhod
      t.integer :ure
      t.text :razlog_odhoda
      t.time :odhod_r
      t.time :prihod_r
      t.text :opombe

      t.timestamps null: false
    end
  end
end
