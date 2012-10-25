require 'spec_helper'

describe "earned_awards/show" do
  before(:each) do
    @earned_award = assign(:earned_award, stub_model(EarnedAward,
      :award_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
