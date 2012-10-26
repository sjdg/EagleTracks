require "spec_helper"

describe EarnedAwardsController do
  describe "routing" do

    it "routes to #index" do
      get("/earned_awards").should route_to("earned_awards#index")
    end

    it "routes to #new" do
      get("/earned_awards/new").should route_to("earned_awards#new")
    end

    it "routes to #show" do
      get("/earned_awards/1").should route_to("earned_awards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/earned_awards/1/edit").should route_to("earned_awards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/earned_awards").should route_to("earned_awards#create")
    end

    it "routes to #update" do
      put("/earned_awards/1").should route_to("earned_awards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/earned_awards/1").should route_to("earned_awards#destroy", :id => "1")
    end

  end
end
