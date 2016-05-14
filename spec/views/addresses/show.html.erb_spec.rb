require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street1 => "Street1",
      :street2 => "Street2",
      :city => "City",
      :state => "State",
      :country => "Country",
      :zipcode => 1,
      :member_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street1/)
    expect(rendered).to match(/Street2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
