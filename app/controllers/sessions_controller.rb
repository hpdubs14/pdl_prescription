class SessionsController < Devise::SessionsController
  
  before_filter :set_title
  
  def set_title
    Rails.logger.debug { "blah set title" }
    @title = "Login"
  end

protected

    def after_sign_in_path_for(resource)
      prescriptions_path
    end

end

