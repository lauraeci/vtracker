require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :organization_id => 1,
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_organization_id[name=?]", "account[organization_id]"

      assert_select "input#account_email[name=?]", "account[email]"

      assert_select "input#account_password[name=?]", "account[password]"
    end
  end
end
