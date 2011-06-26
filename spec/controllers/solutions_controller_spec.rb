require 'spec_helper'

describe SolutionsController do

  describe "GET 'materials'" do
    it "should be successful" do
      get 'materials'
      response.should be_success
    end
  end

end
