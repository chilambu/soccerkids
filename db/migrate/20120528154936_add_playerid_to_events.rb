class AddPlayeridToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :player_id, :integer
  end

  def self.down
    remove_column :events, :player_id
  end
end
