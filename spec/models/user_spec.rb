require 'spec_helper'

describe User do
  
	before(:each) do
		@use = User.new(:id => "",
					:email => "chilambu@gmail.com",
					:crypted_password => "$2a$10$H1xoZPayVAKja7PfiNdNAe0df8LEp/d02b6Qoc6319DSaauu9zCoy", 
					:notifi => "chilambarasan1@gmail.com",
					:firstname => "chilambarasan",
					:lastname => "p",
					:addressline1 => "14 tambaram",
					:addressline2 =>"west tambaram",
					:city => "chennai",
					:zip =>"621659",
					:state =>"tamil nadu",
					:home_phone =>"9876543210",
					:alternate_phone =>"0987654321",
					:alternate_email =>"chil@gmail.com"
				
					)
	end

	 it { should have_many(:players)}
		it "user's name want to be in presence for the firstname" do
               User.new.should validate_presence_of(:email)

end
	
end
