class ChangeRateToBeIntegerInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :rate, :integer
  end
end
