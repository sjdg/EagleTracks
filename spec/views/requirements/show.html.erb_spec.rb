require 'spec_helper'

describe "requirements/show" do
  before(:each) do
    @requirement = assign(:requirement, stub_model(Requirement,
      :id => 1,
      :designator => "Designator",
      :text => "Text",
      :subrequirements => "",
      :subrequirements_required => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Designator/)
    rendered.should match(/Text/)
    rendered.should match(//)
    rendered.should match(/2/)
  end
end
