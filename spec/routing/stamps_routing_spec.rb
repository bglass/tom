require "spec_helper"

describe StampsController do
  describe "routing" do

    it "routes to #index" do
      get("/stamps").should route_to("stamps#index")
    end

    it "routes to #new" do
      get("/stamps/new").should route_to("stamps#new")
    end

    it "routes to #show" do
      get("/stamps/1").should route_to("stamps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stamps/1/edit").should route_to("stamps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stamps").should route_to("stamps#create")
    end

    it "routes to #update" do
      put("/stamps/1").should route_to("stamps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stamps/1").should route_to("stamps#destroy", :id => "1")
    end

  end
end
