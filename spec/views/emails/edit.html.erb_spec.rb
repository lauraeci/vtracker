require 'rails_helper'

RSpec.describe "emails/edit", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :member_id => 1,
      :subject => "MyString",
      :account_id => 1,
      :subject_type => "MyString"
    ))
  end

  it "renders the edit email form" do
    render

    assert_select "form[action=?][method=?]", email_path(@email), "post" do

      assert_select "input#email_member_id[name=?]", "email[member_id]"

      assert_select "input#email_subject[name=?]", "email[subject]"

      assert_select "input#email_account_id[name=?]", "email[account_id]"

      assert_select "input#email_subject_type[name=?]", "email[subject_type]"
    end
  end
end
