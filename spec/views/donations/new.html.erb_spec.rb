require 'rails_helper'

RSpec.describe "donations/new", type: :view do
  before(:each) do
    assign(:donation, Donation.new(
      :amount => "9.99",
      :member => nil
    ))
  end

  it "renders new donation form" do
    render

    assert_select "form[action=?][method=?]", donations_path, "post" do

      assert_select "input#donation_amount[name=?]", "donation[amount]"

      assert_select "input#donation_member_id[name=?]", "donation[member_id]"
    end
  end
end
