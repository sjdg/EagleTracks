require 'spec_helper'

describe "award_earneds/new" do
  before(:each) do
    assign(:award_earned, stub_model(AwardEarned,
      :award_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new award_earned form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => award_earneds_path, :method => "post" do
      assert_select "input#award_earned_award_id", :name => "award_earned[award_id]"
      assert_select "input#award_earned_user_id", :name => "award_earned[user_id]"
    end
  end
end
