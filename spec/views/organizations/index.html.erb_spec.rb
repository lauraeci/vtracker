require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        :account_id => 1,
        :member_id => 2,
        :name => "Name"
      ),
      Organization.create!(
        :account_id => 1,
        :member_id => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
