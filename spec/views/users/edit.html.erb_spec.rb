require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first_name => "MyString",
      :last_name => "MyString",
      :address_id => 1,
      :permissions_id => 1,
      :user_type_id => 1,
      :organization_id => 1,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_last_name", :name => "user[last_name]"
      assert_select "input#user_address_id", :name => "user[address_id]"
      assert_select "input#user_permissions_id", :name => "user[permissions_id]"
      assert_select "input#user_user_type_id", :name => "user[user_type_id]"
      assert_select "input#user_organization_id", :name => "user[organization_id]"
      assert_select "input#user_username", :name => "user[username]"
      assert_select "input#user_password", :name => "user[password]"
    end
  end
end
