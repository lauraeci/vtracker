class Member < ActiveRecord::Base
  belongs_to :organization
  has_many :emails
  has_one :address
  has_many :donations

  validates_presence_of :organization_id
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :age

  accepts_nested_attributes_for :address

  def name
    "#{first_name} #{last_name}"
  end

  def donation_total
    sum = 0
    donations.each do |donation|
      sum += donation.amount
    end
    sum
  end


end
