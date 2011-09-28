require "spec_helper"

describe PhasesController do
  describe "routing" do

    it "routes to #index" do
      get("/phases").should route_to("phases#index")
    end

    it "routes to #new" do
      get("/phases/new").should route_to("phases#new")
    end

    it "routes to #show" do
      get("/phases/1").should route_to("phases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phases/1/edit").should route_to("phases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phases").should route_to("phases#create")
    end

    it "routes to #update" do
      put("/phases/1").should route_to("phases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phases/1").should route_to("phases#destroy", :id => "1")
    end

  end
end
