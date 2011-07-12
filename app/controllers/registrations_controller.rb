class RegistrationsController < Devise::RegistrationController

  before_filter :set_title, :only => :new

  protected

    def set_title
      Rails.logger.debug { "blah set title" }
      @title = "Login"
    end

  
end