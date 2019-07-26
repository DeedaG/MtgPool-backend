class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :pools

  # has_many :investors
  has_many :pools, serializer: PoolSerializer
  # has_many :loans, through: :pools
end
