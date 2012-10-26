require 'spec_helper'

describe "earned_awards/index" do
  before(:each) do
    assign(:earned_awards, [
      stub_model(EarnedAward,
        :award_id => 1,
        :user_id => 2
      ),
      stub_model(EarnedAward,
        :award_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of earned_awards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
