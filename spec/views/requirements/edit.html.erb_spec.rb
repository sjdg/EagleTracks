require 'spec_helper'

describe "requirements/edit" do
  before(:each) do
    @requirement = assign(:requirement, stub_model(Requirement,
      :id => 1,
      :designator => "MyString",
      :text => "MyString",
      :subrequirements => "",
      :subrequirements_required => 1
    ))
  end

  it "renders the edit requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requirements_path(@requirement), :method => "post" do
      assert_select "input#requirement_id", :name => "requirement[id]"
      assert_select "input#requirement_designator", :name => "requirement[designator]"
      assert_select "input#requirement_text", :name => "requirement[text]"
      assert_select "input#requirement_subrequirements", :name => "requirement[subrequirements]"
      assert_select "input#requirement_subrequirements_required", :name => "requirement[subrequirements_required]"
    end
  end
end
