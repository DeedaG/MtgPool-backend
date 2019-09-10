class Loan < ApplicationRecord
  belongs_to :pool, optional: true
  # accepts_nested_attributes_for: pool, update_only => true

end
