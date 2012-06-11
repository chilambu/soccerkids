require 'spec_helper'

describe TransactionController do
	describe "route recognition for Transaction" do
		
		it "should routes to #index" do
			get("/transaction").should route_to("transaction#index")
		end
		
		it "should routes to #new" do
			get("/transaction/new").should route_to("transaction#new")
		end
		
		it "should routes to #DELETE" do
			DELETE("/transaction").should route_to("transaction#destroy")
		end
		
	end
end