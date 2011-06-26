require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'how_it_works'" do
    it "should be successful" do
      get 'how_it_works'
      response.should be_success
    end
  end

  describe "GET 'blogmedia'" do
    it "should be successful" do
      get 'blogmedia'
      response.should be_success
    end
  end

end
