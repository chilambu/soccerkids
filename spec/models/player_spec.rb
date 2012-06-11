require 'spec_helper'

describe Player do
  
	before(:each) do
		@player = Player.new(:id => "",
							:first_name => "chilambu",
							:middle_name => "arasan",
							:last_name => "p",
							:school_name => "v.m.s",
							:registrant_info => "nothing",
							:dob => "12/12/2005"
					)
	end
	
	 it { should have_one(:event)}
	 it { should have_one(:transaction)}
	it { should belong_to(:user)}

	it "Player's firstname want to be in presence for the firstname" do
               Player.new.should validate_presence_of(:first_name)
end
it "Player's lastname want to be in presence for the lastname" do
               Player.new.should validate_presence_of(:last_name)
	       end
it "Player's schoolname want to be in presence for the schoolname" do
               Player.new.should validate_presence_of(:school_name)
	       end
it "Player's registrantinfo want to be in presence for the firstname" do
               Player.new.should validate_presence_of(:registrant_info)

 end
 
 end