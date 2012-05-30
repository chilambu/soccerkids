class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
            t.string:card_type
	    t.integer:card_number
	    t.date:card_date
	    t.string:card_verification
	    t.integer:user_id
	    t.integer:amount
	    t.string:name
	    t.string:adress
	    t.string:city
      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
