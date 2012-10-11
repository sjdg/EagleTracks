require 'spec_helper'

describe "completed_requirements/show" do
  before(:each) do
    @completed_requirement = assign(:completed_requirement, stub_model(CompletedRequirement,
      :id => 1,
      :requirements => "",
      :completes_date => "",
      :user_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
