class ChangeColumnInvestorId < ActiveRecord::Migration[5.2]
  def change
    rename_column :pools, :investor_Id, :investor_id
  end
end
