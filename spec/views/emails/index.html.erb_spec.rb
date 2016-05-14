require 'rails_helper'

RSpec.describe "emails/index", type: :view do
  before(:each) do
    assign(:emails, [
      Email.create!(
        :member_id => 1,
        :subject => "Subject",
        :account_id => 2,
        :subject_type => "Subject Type"
      ),
      Email.create!(
        :member_id => 1,
        :subject => "Subject",
        :account_id => 2,
        :subject_type => "Subject Type"
      )
    ])
  end

  it "renders a list of emails" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Subject Type".to_s, :count => 2
  end
end
