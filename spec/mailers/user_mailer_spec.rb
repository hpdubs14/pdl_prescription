require "spec_helper"

describe UserMailer do
  
  before(:each) do
    @attr = { 
      :name => "Example User", 
      :email => "user@example.com",
      :password => "foobar",
      :password_confirmation => "foobar"
      }
  end
  
  describe "confirmation" do
    
    before(:each) do
      @new_user = User.new(@attr)
      @mailer = UserMailer.confirmation_email(@new_user)
    end
    
    it "should deliver confirmation email successfully" do
      lambda { @new_user.deliver }.should_not raise_error
    end  
      
    describe "and delivered" do

      it "should be added to the delivery queue" do
        lambda { UserMailer.deliver(@mailer) }.should change(ActionMailer::Base.deliveries,:size).by(1)
      end
    end
  
  end
end
