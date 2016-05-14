class Member < ActiveRecord::Base
  belongs_to :organization
  has_many :emails
  has_one :address

  validates_presence_of :organization_id
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :age

  accepts_nested_attributes_for :address

end
