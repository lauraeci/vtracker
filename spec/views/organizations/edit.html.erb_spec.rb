require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :account_id => 1,
      :member_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input#organization_account_id[name=?]", "organization[account_id]"

      assert_select "input#organization_member_id[name=?]", "organization[member_id]"

      assert_select "input#organization_name[name=?]", "organization[name]"
    end
  end
end
