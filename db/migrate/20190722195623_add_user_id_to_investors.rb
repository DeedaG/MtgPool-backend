class AddUserIdToInvestors < ActiveRecord::Migration[5.2]
  def change
    add_column :investors, :user_id, :integer
  end
end
