require 'spec_helper'

describe PlayersController do
	describe "route recognition for Players" do
		
		it "should routes to #addplayer" do
			get("/players/addplayer").should route_to("players#addplayer")
		end
		
		it "should routes to #players" do
			get("/players").should route_to("players#new")
		end
		
	end
end