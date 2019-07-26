class PoolSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :pool_amount



  belongs_to :investor
  belongs_to :user
  has_many :loans, serializer: LoanSerializer

end
