class ChangeInvestorIdToBeIntegerInPools < ActiveRecord::Migration[5.2]
  def change
    change_column :pools, :investor_Id, :integer
  end
end
