class AddParentidToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :parent_id, :integer
  end

  def self.down
    remove_column :players, :parent_id
  end
end
