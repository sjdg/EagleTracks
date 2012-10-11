require 'spec_helper'

describe "CompletedRequirements" do
  describe "GET /completed_requirements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get completed_requirements_path
      response.status.should be(200)
    end
  end
end
