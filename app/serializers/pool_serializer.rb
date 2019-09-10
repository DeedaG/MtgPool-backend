class PoolSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :pool_amount, :investor_id, :loans

  def loans
    loans.map(loan => loan.pool_id = pool.id)
  end

  belongs_to :investor
  belongs_to :user
  has_many :loans, serializer: LoanSerializer

end
