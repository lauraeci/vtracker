require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :organization_id => 1,
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_organization_id[name=?]", "account[organization_id]"

      assert_select "input#account_email[name=?]", "account[email]"

      assert_select "input#account_password[name=?]", "account[password]"
    end
  end
end
