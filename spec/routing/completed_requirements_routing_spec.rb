require "spec_helper"

describe CompletedRequirementsController do
  describe "routing" do

    it "routes to #index" do
      get("/completed_requirements").should route_to("completed_requirements#index")
    end

    it "routes to #new" do
      get("/completed_requirements/new").should route_to("completed_requirements#new")
    end

    it "routes to #show" do
      get("/completed_requirements/1").should route_to("completed_requirements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/completed_requirements/1/edit").should route_to("completed_requirements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/completed_requirements").should route_to("completed_requirements#create")
    end

    it "routes to #update" do
      put("/completed_requirements/1").should route_to("completed_requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/completed_requirements/1").should route_to("completed_requirements#destroy", :id => "1")
    end

  end
end
