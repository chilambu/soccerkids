require 'spec_helper'

describe HomeController do
	describe "route recognition for home" do
		
		it "should routes to #homepage" do
			get("/").should route_to("home#homepage")
		end
		
		it "should routes to #editparent1" do
			get("/home/editparent1").should route_to("home#editparent1")
		end
		
		it "should routes to #editparent" do
			get("/home/editparent").should route_to("home#editparent")
		end
		
				
		it "should routes to #showp" do
			get("/home/showp").should route_to("home#showp")
		end
				
		it "should routes to #thanks" do
			get("/home/thanks").should route_to("home#thanks")
		end
				
		it "should routes to #sorry" do
			get("/home/sorry").should route_to("home#sorry")
		end
				
		it "should routes to #alreadypaid" do
			get("/home/alreadypaid").should route_to("home#alreadypaid")
		end
				
		it "should routes to #redirect" do
			get("/home/redirect").should route_to("home#redirect_page")
		end
				
		it "should routes to #AboutSoccerKids" do
			get("/home/AboutSoccerKids").should route_to("home#aboutSoccerKids")
		end
				
		it "should routes to #help" do
			get("/home/help").should route_to("home#help")
		end
				
		it "should routes to #soccerkidsonlinestore" do
			get("/home/soccerkidsonlinestore").should route_to("home#soccerkidsonlinestore")
		end
	
		
	end
end