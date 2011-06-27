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

end
