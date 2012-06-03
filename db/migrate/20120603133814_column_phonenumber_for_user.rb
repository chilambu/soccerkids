class ColumnPhonenumberForUser < ActiveRecord::Migration

def self.up
   change_table :users do |t|
     t.change :home_phone, :bigint
 end
 end
 def self.down
    change_table :users do |t|
     t.change :home_phone, :integer
 end
 end
 end