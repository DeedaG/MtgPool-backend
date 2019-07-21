class ChangeLoans < ActiveRecord::Migration[5.2]
  def change
    rename_column :loans, :investorId, :investor_Id
  end
end
