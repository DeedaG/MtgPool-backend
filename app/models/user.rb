class User < ApplicationRecord
  has_secure_password

  has_many :pools
  has_many :loans, through: :pools
  has_many :investors, through: :pools
end
