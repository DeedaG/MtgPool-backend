class LoanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :borrower, :amount, :close_date, :term, :rate, :pool_id

  belongs_to :pool
end
