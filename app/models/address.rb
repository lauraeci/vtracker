class Address < ActiveRecord::Base
  belongs_to :member

  validates_presence_of :street1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :country
  validates_presence_of :zipcode
end
