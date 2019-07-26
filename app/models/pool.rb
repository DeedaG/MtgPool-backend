class Pool < ApplicationRecord
  belongs_to :investor
  belongs_to :user
  has_many :loans

end
