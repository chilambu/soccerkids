class AddTransactionIdToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :transaction_id, :integer
  end

  def self.down
    remove_column :players, :transaction_id
  end
end
