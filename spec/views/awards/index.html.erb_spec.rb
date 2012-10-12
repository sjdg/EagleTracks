require 'spec_helper'

describe "awards/index" do
  before(:each) do
    assign(:awards, [
      stub_model(Award,
        :name => "Name"
      ),
      stub_model(Award,
        :name => "Name"
      )
    ])
  end

  it "renders a list of awards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
