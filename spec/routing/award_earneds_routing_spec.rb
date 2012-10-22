require "spec_helper"

describe AwardEarnedsController do
  describe "routing" do

    it "routes to #index" do
      get("/award_earneds").should route_to("award_earneds#index")
    end

    it "routes to #new" do
      get("/award_earneds/new").should route_to("award_earneds#new")
    end

    it "routes to #show" do
      get("/award_earneds/1").should route_to("award_earneds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/award_earneds/1/edit").should route_to("award_earneds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/award_earneds").should route_to("award_earneds#create")
    end

    it "routes to #update" do
      put("/award_earneds/1").should route_to("award_earneds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/award_earneds/1").should route_to("award_earneds#destroy", :id => "1")
    end

  end
end
