class ChangePoolIdToBeIntegerInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :poolId, :integer
  end
end
