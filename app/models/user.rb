class User < ApplicationRecord
  has_secure_password

  has_many :investors
  has_many :pools, through: :investors
  has_many :loans, through: :pools

end
