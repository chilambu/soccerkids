class ColumnDatatypeForTransactions < ActiveRecord::Migration
  def self.up
   change_table :transactions do |t|
     t.change :card_number, :bigint
 end
 end
 def self.down
    change_table :transactions do |t|
     t.change :card_number, :integer
 end
 end
end
