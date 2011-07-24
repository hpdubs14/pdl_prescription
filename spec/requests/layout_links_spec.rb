require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
     get '/'
     response.should have_selector('title', :content => "Enabling Dental Practices to focus on dentistry")
   end

   it "should have a Contact page at '/contact'" do
     get '/contact'
     response.should have_selector('title', :content => "Contact Us")
   end

   it "should have an About page at '/about'" do
     get '/about'
     response.should have_selector('title', :content => "About Us")
   end

   it "should have a Help page at '/how_it_works'" do
     get '/how_it_works'
     response.should have_selector('title', :content => "How we help each other")
   end
   
   it "should have a Help page at '/blog'" do
     get '/blog'
     response.should have_selector('title', :content => "Blog")
   end
    
   it "should have a Help page at '/products'" do
     get '/products'
     response.should have_selector('title', :content => "Products and Services")
   end

   it "should have a Help page at '/support'" do
     get '/support'
     response.should have_selector('title', :content => "Customer Support")
   end
   
   it "should have a Sign-in page at '/login" do
     get '/login'
     response.should have_selector('title', :content => "Login")
   end

# Testing having the right links in the layout per page

it "should have the right links on the layout" do
  visit root_path
  response.should have_selector('title', :content => "Enabling Dental Practices to focus on dentistry")
  response.should have_selector('a[href="/"]>img')
  
  click_link "About"    
  response.should have_selector('title', :content => "About Us")
  click_link "Contact"    
  response.should have_selector('title', :content => "Contact Us")
  click_link "Home"    
  response.should have_selector('title', :content => "Enabling Dental Practices to focus on dentistry")
  click_link "Products"  
  response.should have_selector('title', :content => "Products and Services")
  click_link "Shop"  
  response.should have_selector('title', :content => "Purchase")
 
  
  

end





end
