require 'spec_helper'

describe "completed_requirements/edit" do
  before(:each) do
    @completed_requirement = assign(:completed_requirement, stub_model(CompletedRequirement,
      :id => 1,
      :requirements => "",
      :completes_date => "",
      :user_id => ""
    ))
  end

  it "renders the edit completed_requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => completed_requirements_path(@completed_requirement), :method => "post" do
      assert_select "input#completed_requirement_id", :name => "completed_requirement[id]"
      assert_select "input#completed_requirement_requirements", :name => "completed_requirement[requirements]"
      assert_select "input#completed_requirement_completes_date", :name => "completed_requirement[completes_date]"
      assert_select "input#completed_requirement_user_id", :name => "completed_requirement[user_id]"
    end
  end
end
