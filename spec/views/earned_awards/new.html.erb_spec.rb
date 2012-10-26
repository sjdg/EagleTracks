require 'spec_helper'

describe "earned_awards/new" do
  before(:each) do
    assign(:earned_award, stub_model(EarnedAward,
      :award_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new earned_award form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => earned_awards_path, :method => "post" do
      assert_select "input#earned_award_award_id", :name => "earned_award[award_id]"
      assert_select "input#earned_award_user_id", :name => "earned_award[user_id]"
    end
  end
end
