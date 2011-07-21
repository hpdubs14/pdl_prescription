class RegistrationsController < Devise::RegistrationsController
# 
#   before_filter :set_title, :only => :new
# 
protected

    def after_sign_up_path_for(resource)
      root_path
    end

    def after_inactive_sign_up_path_for(resource)
      root_path
    end
end