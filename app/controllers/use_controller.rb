class UseController < ApplicationController
 
 def notifi 
	
 @users=User.new
 
 end
 
 def notifi1
	 
 @users=User.find_by_id(current_user.id)
 @users.notifi=params[:@users][:notifi]
 @users.save
@contact=params[:@users][:notifi]
Email.notif(@contact).deliver
redirect_to "/programs"
	 end

 def per_info
 end
 def pd
	  @event = Event.find(params[:id])
 end

end
