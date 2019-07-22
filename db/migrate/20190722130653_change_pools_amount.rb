class ChangePoolsAmount < ActiveRecord::Migration[5.2]

  def change
    change_column :pools, :pool_amount, :integer
  end
end
