class HomeController < ApplicationController
before_filter :authenticate_user!,:only => [:showp,:editparent,:editparent1,:thanks,:alreadypaid,:sorry]
  def index
  end
 def homepage
 end
 def programs
  end
 def aboutSoccerKids
  end
def soccerkidsonlinestore
end
def help
end

def showp

	 @user = User.all
	 
	end
 def redirect_page
	 type=params[:type]
		
		  case type
		 when "sign_up"
		  page=  {:controller=>"registrations", :action=>"new",:type => "reg"}
		 when  "reg_pgm"
		  page= {:controller => 'devise/sessions', :action => 'new', :type => "reg_pgm"}
		 when "payment"
		  page= {:controller => 'devise/sessions', :action => 'new', :type => "payment"}
		 when "per_info"
		  page= {:controller => 'devise/sessions', :action => 'new', :type => "per_info"}
		  when "notify"
		  page= {:controller => 'devise/sessions', :action => 'new', :type => "notify"}
		
	  end
	redirect_to page
end
def editparent
	@user=User.find_by_id(current_user.id)
end

def editparent1
	@user=User.find_by_id(current_user.id)
	@user.update_attributes(params[:user])
	redirect_to '/programs'
end
def thanks
end
def sorry
end
def alreadypaid
	end
end
