class Investor < ApplicationRecord
  has_many :pools
  has_many :loans, through: :pools

end
