require 'spec_helper'

describe "award_earneds/show" do
  before(:each) do
    @award_earned = assign(:award_earned, stub_model(AwardEarned,
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
