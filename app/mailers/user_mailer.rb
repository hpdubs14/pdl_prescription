class UserMailer < ActionMailer::Base
  default :from => "paul@parthenondental.com" 
  
  def confirmation_email(user)
    @user = user
    # TODO - Correct this format
    @url  = "http://www.parthenondental.com/login"
    mail( :to       => user.email,
          :subject  => "Confirmation email for signing up for PDL service"
          ) do |format|
              format.html {render '/devise/mailer/confirmation_instructions.html.erb'}
              format.text {render '/devise/mailer/confirmation_instructions.text.er'}
            end
  end
end
