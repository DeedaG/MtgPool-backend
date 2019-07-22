class Investor < ApplicationRecord
  has_many :pools
  has_many :loans
  belongs_to :user

end
