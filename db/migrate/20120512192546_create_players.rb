class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.boolean :gender
      t.date :dob
      t.integer :user_id
      t.string :school_name
      t.string :registrant_info

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
