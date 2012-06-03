class ColumnAlternatenumberForUser < ActiveRecord::Migration
  def self.up
   change_table :users do |t|
     t.change :alternate_phone, :bigint
 end
 end
 def self.down
    change_table :users do |t|
     t.change :alternate_phone, :integer
 end
 end
 end