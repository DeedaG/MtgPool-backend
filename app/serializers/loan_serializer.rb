class LoanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :borrower, :amount, :close_date, :term, :rate

  belongs_to :pool
end
