require "spec_helper"

describe FoundriesController do
  describe "routing" do

    it "routes to #index" do
      get("/foundries").should route_to("foundries#index")
    end

    it "routes to #new" do
      get("/foundries/new").should route_to("foundries#new")
    end

    it "routes to #show" do
      get("/foundries/1").should route_to("foundries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foundries/1/edit").should route_to("foundries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foundries").should route_to("foundries#create")
    end

    it "routes to #update" do
      put("/foundries/1").should route_to("foundries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foundries/1").should route_to("foundries#destroy", :id => "1")
    end

  end
end
