class ApplicationController < ActionController::Base
  protect_from_forgery
 after_filter :page_redirect
  include SimpleCaptcha::ControllerHelpers
 def after_sign_out_path_for(resource_or_scope)
    root_path
  end 

   
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


