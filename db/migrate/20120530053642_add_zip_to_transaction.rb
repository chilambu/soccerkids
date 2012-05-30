class AddZipToTransaction < ActiveRecord::Migration
  def self.up
    add_column :transactions, :zip, :integer
  end

  def self.down
    remove_column :transactions, :zip
  end
end
