class Account < ActiveRecord::Base
  belongs_to :organization
  has_many :emails
  has_many :members, through: :organization
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
