class ChangeColumnPoolInvestorId < ActiveRecord::Migration[5.2]
  def change
    rename_column :loans, :investor_Id, :investor_id
    rename_column :loans, :pool_Id, :pool_id
  end
end
