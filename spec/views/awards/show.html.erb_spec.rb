require 'spec_helper'

describe "awards/show" do
  before(:each) do
    @award = assign(:award, stub_model(Award,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
