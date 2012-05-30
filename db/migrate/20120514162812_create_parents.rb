class CreateParents < ActiveRecord::Migration
  def self.up
    create_table :parents do |t|
      t.string :firstname
      t.string :lastname
      t.string :addressline1
      t.string :addressline2
      t.string :city
      t.string :zip
      t.string :state
      t.integer :home_phone
      t.string :alternate_phone
      t.string :alternate_email

      t.timestamps
    end
  end

  def self.down
    drop_table :parents
  end
end
