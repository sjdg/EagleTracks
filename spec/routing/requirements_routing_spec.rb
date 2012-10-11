require "spec_helper"

describe RequirementsController do
  describe "routing" do

    it "routes to #index" do
      get("/requirements").should route_to("requirements#index")
    end

    it "routes to #new" do
      get("/requirements/new").should route_to("requirements#new")
    end

    it "routes to #show" do
      get("/requirements/1").should route_to("requirements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/requirements/1/edit").should route_to("requirements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/requirements").should route_to("requirements#create")
    end

    it "routes to #update" do
      put("/requirements/1").should route_to("requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/requirements/1").should route_to("requirements#destroy", :id => "1")
    end

  end
end
