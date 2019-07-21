class ChangeInvestorIdToBeIntegerInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :investorId, :integer
  end
end
