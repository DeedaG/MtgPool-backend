class InvestorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :fee

  has_many :pools
  has_many :loans, through: :pools
end
