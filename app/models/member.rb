class Member < ActiveRecord::Base
  belongs_to :organization
  has_many :emails
  has_one :address

  def name
    "#{first_name} #{last_name}"
  end

end
