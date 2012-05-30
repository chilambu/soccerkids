class AddNotifiToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :notifi, :string
  end

  def self.down
    remove_column :users, :notifi
  end
end
