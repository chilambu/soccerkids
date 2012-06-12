require 'spec_helper'

describe UseController do
	describe "route recognition for use" do
		
		it "should routes to #notifi" do
			get("/use/notifi").should route_to("use#notifi")
		end
		
		it "should routes to #notifi1" do
			get("/use/notifi1").should route_to("use#notifi1")
		end
		
		it "should routes to #enlarge" do
			get("/use/enlarge").should route_to("use#enlarge")
		end
		
		
		
	end
end