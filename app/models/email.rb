class Email < ActiveRecord::Base
  belongs_to :member
  belongs_to :account
end
