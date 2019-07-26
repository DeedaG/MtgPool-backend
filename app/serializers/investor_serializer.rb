class InvestorSerializer
  include FastJsonapi::ObjectSerializer
  attributes: :name

  has_many :pools
  has_many :loans, through: :pools
end
