class RemoveUserIdFromInvestors < ActiveRecord::Migration[5.2]
  def change
    remove_column :investors, :user_id, :integer
  end
end
