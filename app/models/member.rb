class Member < ActiveRecord::Base
  belongs_to :organization
  has_many :emails
  has_one :address

end
