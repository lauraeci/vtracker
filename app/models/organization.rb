class Organization < ActiveRecord::Base
  has_many :accounts
  has_many :members
end
