class ChangePoolId < ActiveRecord::Migration[5.2]
  def change
    rename_column :loans, :poolId, :pool_Id
  end
end
