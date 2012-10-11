require 'spec_helper'

describe "completed_requirements/index" do
  before(:each) do
    assign(:completed_requirements, [
      stub_model(CompletedRequirement,
        :id => 1,
        :requirements => "",
        :completes_date => "",
        :user_id => ""
      ),
      stub_model(CompletedRequirement,
        :id => 1,
        :requirements => "",
        :completes_date => "",
        :user_id => ""
      )
    ])
  end

  it "renders a list of completed_requirements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
