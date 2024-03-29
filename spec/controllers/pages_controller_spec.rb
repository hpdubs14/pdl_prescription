require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "PDL"
  end
    
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => @base_title + " | Enabling Dental Practices to focus on dentistry")
    end
  end


  describe "GET 'contact'" do
    
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have a mail to link" do
      mailtoRegex = /info@parthenondental.com/i
      get 'contact'
      response.should have_selector("a") do |mail_to|
        mail_to.should contain(mailtoRegex)
      end
    end
    
    it "should have a title" do
      get 'contact'
      response.should have_selector("title", :content => @base_title + " | Contact Us")
    end
  end



  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have a title" do
      get 'about'
      response.should have_selector("title", :content => @base_title + " | About Us")
    end
    
  end

  describe "GET 'how_it_works'" do
    it "should be successful" do
      get 'how_it_works'
      response.should be_success
    end
    
    it "should have a title" do
      get 'how_it_works'
      response.should have_selector("title", :content => @base_title + " | How we help each other")
    end
  end

  describe "GET 'blog'" do
    it "should be successful" do
      get 'blog'
      response.should be_success
    end
    
    it "should have a title" do
      get 'blog'
      response.should have_selector("title", :content => @base_title + " | Blog")
    end
  end
  
  describe "GET 'purchase'" do
    it "should be successful" do
      get 'purchase'
      response.should be_success
    end
        
    it "should have a title" do
      get 'purchase'
      response.should have_selector("title", :content => @base_title + " | Purchase Supplies")
    end
  end

end
