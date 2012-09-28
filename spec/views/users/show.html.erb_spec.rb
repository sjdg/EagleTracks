require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "First Name",
      :last_name => "Last Name",
      :address_id => 1,
      :permissions_id => 2,
      :user_type_id => 3,
      :organization_id => 4,
      :username => "Username",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Username/)
    rendered.should match(/Password/)
  end
end
