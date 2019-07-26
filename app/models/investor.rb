class Investor < ApplicationRecord
  has_many :pools
  has_many :loans, through: :pools
  # belongs_to :user

end
