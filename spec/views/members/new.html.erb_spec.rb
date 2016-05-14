require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :organization_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :age => 1,
      :hours_worked => 1
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_organization_id[name=?]", "member[organization_id]"

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_phone[name=?]", "member[phone]"

      assert_select "input#member_age[name=?]", "member[age]"

      assert_select "input#member_hours_worked[name=?]", "member[hours_worked]"
    end
  end
end
