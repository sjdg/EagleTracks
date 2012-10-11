require 'spec_helper'

describe "requirements/index" do
  before(:each) do
    assign(:requirements, [
      stub_model(Requirement,
        :id => 1,
        :designator => "Designator",
        :text => "Text",
        :subrequirements => "",
        :subrequirements_required => 2
      ),
      stub_model(Requirement,
        :id => 1,
        :designator => "Designator",
        :text => "Text",
        :subrequirements => "",
        :subrequirements_required => 2
      )
    ])
  end

  it "renders a list of requirements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Designator".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
