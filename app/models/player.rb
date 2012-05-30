class Player < ActiveRecord::Base
	belongs_to :user#,:class_name=>"User"
	has_one :program
	has_one :event
         validates_presence_of  :first_name,:last_name,:school_name,:registrant_info 
end
	

