class ChangeFeeToBeIntegerInInvestors < ActiveRecord::Migration[5.2]
  def change
    change_column :investors, :fee, :integer
  end
end
