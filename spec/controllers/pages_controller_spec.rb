require 'spec_helper'

describe PagesController do
  render_views
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content =>"PDL | Enabling Dental Practices to focus on dentistry")
    end
  end


  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have a mail to link" do
      get 'contact'
      response.should have_selector("a", :href => "mailto:info@parthenondental.com")
    end
    
    it "should have a title" do
      get 'contact'
      response.should have_selector("title", :content => "PDL | Contact Us")
    end
  end



  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have a title" do
      get 'about'
      response.should have_selector("title", :content => "PDL | About Us")
    end
    
  end



  describe "GET 'how_it_works'" do
    it "should be successful" do
      get 'how_it_works'
      response.should be_success
    end
    
    it "should have a title" do
      get 'how_it_works'
      response.should have_selector("title", :content => "PDL | How we help each other")
    end
  end

  describe "GET 'blog'" do
    it "should be successful" do
      get 'blog'
      response.should be_success
    end
    
    it "should have a title" do
      get 'blog'
      response.should have_selector("title", :content => "PDL | Blog")
    end
  end
  
  describe "GET 'support'" do
    it "should be successful" do
      get 'support'
      response.should be_success
    end
        
    it "should have a title" do
      get 'support'
      response.should have_selector("title", :content => "PDL | Customer Support")
    end
  end

end
