class PagesController < ApplicationController
  def home
    @title = "Enabling Dental Practices to focus on dentistry"
  end

  def contact
    @title = "Contact Us"
  end

  def about
    @title = "About Us"
  end

  def how_it_works
    @title = "How we help each other"
  end

  def blog
    @title = "Blog"
  end
  
  def support
    @title = "Customer Support"
  end
  
  def products
    @title = "Products and Services"
  end
  
  def help
    @title = "Help"
  end

  def purchase
    @title = "Purchase Supplies"
  end
  
  def service
    @title = "Dental Services for your practice"
  end

end
