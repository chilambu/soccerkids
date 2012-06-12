class RegistrationsController < Devise::RegistrationsController
	prepend_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  prepend_before_filter :authenticate_scope!, :only => [:edit, :update, :destroy]
  include Devise::Controllers::InternalHelpers

  # GET /resource/sign_up
  def new
    resource = build_resource({})
    respond_with_navigational(resource){ render_with_scope :new }
    
  end

  # POST /resource
  def create
	#~ if verify_recaptcha
	#~ super
	#~ else
	#~ build_resource
	#~ clean_up_passwords(resource)
	#~ flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
	#~ #render_with_scope :new
	#~ end 
	build_resource
	if verify_recaptcha
		if resource.save
			if resource.active_for_authentication?
				set_flash_message :notice, :signed_up if is_navigational_format?
				sign_in(resource_name, resource)
				respond_with resource, :location => after_sign_up_path_for(resource)
			else
				set_flash_message :notice, :inactive_signed_up, :reason => inactive_reason(resource) if is_navigational_format?
				expire_session_data_after_sign_in!
				respond_with resource, :location => after_inactive_sign_up_path_for(resource)
			end
		else
			clean_up_passwords(resource)
			respond_with_navigational(resource) { render_with_scope :new }
		end
	else
		#build_resource
		clean_up_passwords(resource)
		flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
		render_with_scope :new
	end
end
  # GET /resource/edit
  def edit
    render_with_scope :edit
  end

  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)

    if resource.update_with_password(params[resource_name])
      set_flash_message :notice, :updated if is_navigational_format?
      sign_in resource_name, resource, :bypass => true
      respond_with resource, :location => after_update_path_for(resource)
    else
      clean_up_passwords(resource)
      respond_with_navigational(resource){ render_with_scope :edit }
    end
  end
def after_update_path_for(resource)
    new_player_path
    end
def after_sign_up_path_for(resource)
edit_user_registration_path
    end
  # DELETE /resource
  def destroy
    resource.destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    set_flash_message :notice, :destroyed if is_navigational_format?
    respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
  end
  
end
