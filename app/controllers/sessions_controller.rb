class SessionsController < Devise::SessionsController
  
  before_filter :set_title
  
  def set_title
    Rails.logger.debug { "blah set title" }
    @title = "Login"
  end

protected


end

