class Pool < ApplicationRecord
  belongs_to :investor
  has_many :loans

end
