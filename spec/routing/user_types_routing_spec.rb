require "spec_helper"

describe UserTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_types").should route_to("user_types#index")
    end

    it "routes to #new" do
      get("/user_types/new").should route_to("user_types#new")
    end

    it "routes to #show" do
      get("/user_types/1").should route_to("user_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_types/1/edit").should route_to("user_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_types").should route_to("user_types#create")
    end

    it "routes to #update" do
      put("/user_types/1").should route_to("user_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_types/1").should route_to("user_types#destroy", :id => "1")
    end

  end
end
