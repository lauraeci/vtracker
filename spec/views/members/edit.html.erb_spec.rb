require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :organization_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :age => 1,
      :hours_worked => 1
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

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
