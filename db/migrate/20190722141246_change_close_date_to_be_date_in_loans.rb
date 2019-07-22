class ChangeCloseDateToBeDateInLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :close_date, :date
  end
end
