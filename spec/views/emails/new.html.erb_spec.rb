require 'rails_helper'

RSpec.describe "emails/new", type: :view do
  before(:each) do
    assign(:email, Email.new(
      :member_id => 1,
      :subject => "MyString",
      :account_id => 1,
      :subject_type => "MyString"
    ))
  end

  it "renders new email form" do
    render

    assert_select "form[action=?][method=?]", emails_path, "post" do

      assert_select "input#email_member_id[name=?]", "email[member_id]"

      assert_select "input#email_subject[name=?]", "email[subject]"

      assert_select "input#email_account_id[name=?]", "email[account_id]"

      assert_select "input#email_subject_type[name=?]", "email[subject_type]"
    end
  end
end
