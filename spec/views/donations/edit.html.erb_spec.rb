require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :amount => "9.99",
      :member => nil
    ))
  end

  it "renders the edit donation form" do
    render

    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do

      assert_select "input#donation_amount[name=?]", "donation[amount]"

      assert_select "input#donation_member_id[name=?]", "donation[member_id]"
    end
  end
end
