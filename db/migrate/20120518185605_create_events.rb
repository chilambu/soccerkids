class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.timestamp :from_time
      t.timestamp :to_time
      t.integer :age
      t.string :status
      t.date :dates
      t.string :coach
      t.string :tuition
      t.string :programlist_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
