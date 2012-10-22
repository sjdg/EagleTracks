require 'spec_helper'

describe "award_earneds/edit" do
  before(:each) do
    @award_earned = assign(:award_earned, stub_model(AwardEarned,
      :award_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit award_earned form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => award_earneds_path(@award_earned), :method => "post" do
      assert_select "input#award_earned_award_id", :name => "award_earned[award_id]"
      assert_select "input#award_earned_user_id", :name => "award_earned[user_id]"
    end
  end
end
