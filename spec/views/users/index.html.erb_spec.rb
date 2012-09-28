require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_id => 1,
        :permissions_id => 2,
        :user_type_id => 3,
        :organization_id => 4,
        :username => "Username",
        :password => "Password"
      ),
      stub_model(User,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_id => 1,
        :permissions_id => 2,
        :user_type_id => 3,
        :organization_id => 4,
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
