class Transaction < ActiveRecord::Base
	belongs_to :player
	         validates_presence_of  :name,:city,:state,:zip,:amount,:card_number,:card_verification
                 
end
