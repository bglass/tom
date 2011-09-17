require "spec_helper"

describe FundingsController do
  describe "routing" do

    it "routes to #index" do
      get("/fundings").should route_to("fundings#index")
    end

    it "routes to #new" do
      get("/fundings/new").should route_to("fundings#new")
    end

    it "routes to #show" do
      get("/fundings/1").should route_to("fundings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fundings/1/edit").should route_to("fundings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fundings").should route_to("fundings#create")
    end

    it "routes to #update" do
      put("/fundings/1").should route_to("fundings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fundings/1").should route_to("fundings#destroy", :id => "1")
    end

  end
end
