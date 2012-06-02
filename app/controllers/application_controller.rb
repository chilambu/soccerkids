class ApplicationController < ActionController::Base
  protect_from_forgery
include SimpleCaptcha::ControllerHelpers
 after_filter :page_redirect
 #~ before_filter :check_captcha
  include SimpleCaptcha::ControllerHelpers
 def after_sign_out_path_for(resource_or_scope)
    root_path
  end 
 #~ def after_sign_in_path_for(resource_or_scope)
  #~ render :text => "hi"
#~ end


 #~ def after_sign_in_path_for(resource_or_scope)
#~ #    if resource_or_scope.is_a?(User)
      #~ new_parent_path
   #~ # else
     #~ # super
    #~ #end
  #~ end
   
  def page_redirect
    if params[:controller] == "devise/sessions" and params[:action]=="new" 
      url = red_page(params[:type])
      session[:user_return_to] = url
    else 
	    params[:controller] == "registrations" and params[:action]=="new" 
      url = red_page(params[:type])
      session[:user_return_to] = url
    end
end


#~ def get_details(details)
    #~ @detail_value=details
#~ end

def red_page(type)
case type
when  "reg"
page="/users/edit"
when "payment"
page= "/programs"
when "per_info"
page= "/home/editparent"
when "notify"
page= "/use/notifi"
else
page="/programs"
end
end

def check_captcha
 if params[:controller] == "devise/registrations" and params[:action]=="new" 
      simple_captcha_valid? ? error=false : error=true
 end
end
end


  #~ def create
    #~ if check_captcha
      #~ super
    #~ else
      #~ build_resource
      #~ clean_up_passwords(resource)
      #~ flash[:error] = "There was an error with the captcha code below. Please re-enter the code and click submit."
      #~ render_with_scope :new
    #~ end
  #~ end
