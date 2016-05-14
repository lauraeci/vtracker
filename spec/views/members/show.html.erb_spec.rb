require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :organization_id => 1,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :age => 2,
      :hours_worked => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
