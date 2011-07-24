require "spec_helper"

describe PrescriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/prescriptions").should route_to("prescriptions#index")
    end

    it "routes to #new" do
      get("/prescriptions/new").should route_to("prescriptions#new")
    end

    it "routes to #show" do
      get("/prescriptions/1").should route_to("prescriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prescriptions/1/edit").should route_to("prescriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prescriptions").should route_to("prescriptions#create")
    end

    it "routes to #update" do
      put("/prescriptions/1").should route_to("prescriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prescriptions/1").should route_to("prescriptions#destroy", :id => "1")
    end

  end
end
