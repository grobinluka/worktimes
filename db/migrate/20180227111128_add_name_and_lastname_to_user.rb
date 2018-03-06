class AddNameAndLastnameToUser < ActiveRecord::Migration
  def change
    add_column :users, :ime, :string
    add_column :users, :priimek, :string
  end
end