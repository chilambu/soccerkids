require 'spec_helper'

describe Transaction do
  
	before(:each) do
		@transaction = Transaction.new(:id => "",
					:card_type => "master",
					:card_number => "4785636150538332", 
					:card_date => "2004-10-18",
					:card_verification => "123",
					:amount => "205",
					:name => "chilambu",
					:adress => "chennai",
					:zip =>"621659",
					:state =>"tamil nadu",
					:city =>"chennai"
				
					)
	end

	 it { should belong_to(:player)}
		it "user's name want to be in presence for the name" do
               Transaction.new.should validate_presence_of(:name)

end
it "transaction's city want to be in presence for the city" do
               Transaction.new.should validate_presence_of(:city)
end

it "transaction's state want to be in presence for the state" do
               Transaction.new.should validate_presence_of(:state)
end

it "transaction's amount want to be in presence for the amount" do
               Transaction.new.should validate_presence_of(:amount)
end

it "transaction's cardnumber want to be in presence for the cardnumber" do
               Transaction.new.should validate_presence_of(:card_number)
end

it "transaction's cardverification want to be in presence for the cardverification" do
               Transaction.new.should validate_presence_of(:card_verification)
end

it "transaction's zip want to be in presence for the zip" do
               Transaction.new.should validate_presence_of(:zip)
end

end
