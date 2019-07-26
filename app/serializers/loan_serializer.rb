class LoanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :borrower, :amount, :close_date

  belongs_to :pool
end
