require 'rails_helper'

RSpec.describe "emails/show", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :member_id => 1,
      :subject => "Subject",
      :account_id => 2,
      :subject_type => "Subject Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Subject Type/)
  end
end
