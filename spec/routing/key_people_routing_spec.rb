require "spec_helper"

describe KeyPeopleController do
  describe "routing" do

    it "routes to #index" do
      get("/key_people").should route_to("key_people#index")
    end

    it "routes to #new" do
      get("/key_people/new").should route_to("key_people#new")
    end

    it "routes to #show" do
      get("/key_people/1").should route_to("key_people#show", :id => "1")
    end

    it "routes to #edit" do
      get("/key_people/1/edit").should route_to("key_people#edit", :id => "1")
    end

    it "routes to #create" do
      post("/key_people").should route_to("key_people#create")
    end

    it "routes to #update" do
      put("/key_people/1").should route_to("key_people#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/key_people/1").should route_to("key_people#destroy", :id => "1")
    end

  end
end
