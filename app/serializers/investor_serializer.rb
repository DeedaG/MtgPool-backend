class InvestorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :fee

  has_many :pools, serializer: PoolSerializer
  has_many :loans, through: :pools
end
