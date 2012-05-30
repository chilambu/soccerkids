class AddPlayeridToTransaction < ActiveRecord::Migration
  def self.up
    add_column :transactions, :player_id, :integer
  end

  def self.down
    remove_column :transactions, :player_id
  end
end
