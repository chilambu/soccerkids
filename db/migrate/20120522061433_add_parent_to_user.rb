class AddParentToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :addressline1, :string
    add_column :users, :addressline2, :string
    add_column :users, :city, :string
    add_column :users, :zip, :integer
    add_column :users, :state, :string
    add_column :users, :home_phone, :integer
    add_column :users, :alternate_phone, :integer
    add_column :users, :alternate_email, :string
  end

  def self.down
    remove_column :users, :alternate_email
    remove_column :users, :alternate_phone
    remove_column :users, :home_phone
    remove_column :users, :state
    remove_column :users, :zip
    remove_column :users, :city
    remove_column :users, :addressline2
    remove_column :users, :addressline1
    remove_column :users, :lastname
    remove_column :users, :firstname
  end
end
