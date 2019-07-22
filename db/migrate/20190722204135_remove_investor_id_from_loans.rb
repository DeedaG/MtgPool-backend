class RemoveInvestorIdFromLoans < ActiveRecord::Migration[5.2]
  def change
    remove_column :loans, :investor_id, :integer
  end
end
