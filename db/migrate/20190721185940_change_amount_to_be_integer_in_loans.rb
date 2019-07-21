class ChangeAmountToBeIntegerInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :amount, :integer
  end
end
